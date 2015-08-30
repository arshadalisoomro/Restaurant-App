class LandingController < ApplicationController
  get '/' do
    @parties = []
    Party.where(:has_paid => false).each do |party|
      @parties.push(party.table_id)
    end
    @foods = Food.all
    @tables = Table.where(:status => 'active')
    erb :'index'
  end
end
