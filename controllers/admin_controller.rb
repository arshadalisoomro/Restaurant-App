class AdminController < ApplicationController
  get '/' do
    erb :'admin/index'
  end

  post '/waiters' do
    Waiter.create(params[:waiter])
    redirect '/admin'
  end

  delete '/waiters/:id' do
    Waiter.update(params[:id], :status => 'fired')
    redirect '/admin'
  end

  post '/tables' do
    if Table.where(:status => 'removed').length > 0
      Table.update(Table.where(:status => 'removed').last, :status => 'active')
    else
      Table.create
    end
    redirect '/admin'
  end

  delete '/tables' do
    if Table.where(:status => 'active').length > Party.where(:has_paid => false).length
      tables = []
      Table.where(:status => 'active').each { |table|
        tables.push(table.id)
      }
    end

    open_tables = []

    tables.each_with_index {|table, i|
      has_party = false
      Party.where(:has_paid => false).each { |party|
        if party.table_id == tables[i]
          has_party = true
        end
      }
      if has_party == false
        open_tables.push(tables[i])
      end
    }
    puts "HELLO"
    puts tables
    puts open_tables

    Table.update(open_tables.pop, :status => 'removed')
    redirect '/admin'
  end

end
