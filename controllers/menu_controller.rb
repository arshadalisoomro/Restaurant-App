class MenuController < ApplicationController
  get '/' do
    @foods = Food.where(:on_menu => true)
    erb :'menu/index'
  end

  post '/' do
    Food.create(params[:food])
    redirect '/menu'
  end

  get '/:id' do
    @food = Food.find(params[:id])
    erb :'menu/show'
  end

  put '/:id' do
    Food.find(params[:id]).update(params[:food])
    redirect "/menu/#{params[:id]}"
  end

  delete '/:id' do
    Food.update(params[:id], :on_menu => false)
    redirect '/menu'
  end
end
