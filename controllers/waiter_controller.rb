class WaiterController < ApplicationController
  get '/:id' do
    @waiter = Waiter.find(params[:id])
    @parties = []
    Party.where(:waiter_id => @waiter.id, :has_paid => false).each do |party|
      @parties.push(party.table_id)
    end
    @tables = Table.all
    @foods = Food.all
    erb :'waiters/index'
  end

  post '/' do
    party = Party.create(params[:party])
    redirect "/waiters/#{party.waiter_id}"
  end

  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect "/waiters/#{party.waiter_id}"
  end

  delete '/clear/:id' do
    party = Party.find(params[:id])
    waiter = party.waiter_id
    Party.update(params[:id], :has_paid => true)
    PartyOrder.where(:party_id => params[:id], :has_paid => false).update_all(:has_paid => true)
    redirect "/waiters/#{waiter}"
  end

end
