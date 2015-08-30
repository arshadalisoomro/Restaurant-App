class OrderController < ApplicationController
  get '/' do
    redirect '/'
  end

  post '/' do
    params[:items].each do |item|
      PartyOrder.create({party_id: params[:party_id], food_id: item})
    end
    redirect '/'
  end

  delete '/:id' do
    PartyOrder.delete(params[:id])
    redirect '/'
  end
end
