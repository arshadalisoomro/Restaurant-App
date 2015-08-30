class KitchenController < ApplicationController
  get '/' do
    @orders = PartyOrder.where(:cooked => false).sort_by { |party_order| party_order.updated_at }
    erb :'kitchen/index'
  end

  get '/:id' do
    PartyOrder.update(params[:id], :cooked => true)
    redirect '/kitchen'
  end
end
