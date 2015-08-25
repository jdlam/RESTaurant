class AdminsController < ApplicationController

  # INDEX
  get '/' do
    erb :'admin/index'
  end

  # NEW
  get '/menu/new' do
    erb :'foods/new'
  end

  # CREATE
  post '/' do
    Food.create(params[:menu_item])
    redirect '/admin'
  end

  # SHOW
  # SHOW foods
  get '/foods' do
    erb :'foods/index'
  end
  # SHOW servers
  get '/servers' do
    erb :'servers/index'
  end

  # EDIT

  # UPDATE

  # DESTROY

end
