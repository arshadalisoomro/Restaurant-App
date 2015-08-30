class PartyController < ApplicationController
  # get '/' do
  #   redirect '/'
  # end

  def reload(options = nil)
    super
    self.instance_variables.each do |ivar|
      next if ivar == '@attributes'
      self.instance_variable_set(ivar, nil)
    end
  end

  post '/' do
    if (params[:party].size == 0)
      params[:party].size = 1
    end
    @party = Party.create(params[:party])
    redirect '/'
  end

  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect '/'
  end

  delete '/:id' do
    Party.update(params[:id], :has_paid => true)
    PartyOrder.where(:party_id => params[:id], :has_paid => false).update_all(:has_paid => true)
    redirect '/'
  end
end
