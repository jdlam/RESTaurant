class PartiesController < ApplicationController

  # INDEX
  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

  # NEW
  get '/new' do
    @servers = Server.all
    erb :'parties/new'
  end

  # CREATE
  post '/' do
    party = Party.create(params[:party])
    redirect "/parties/#{ party.id }"
  end

  # SHOW
  get '/:id' do
    @party = Party.find(params[:id])
    erb :'parties/show'
  end

  # EDIT
  get '/:id/edit' do
    @party = Party.find(params[:id])
    @servers = Server.all
    erb :'parties/edit'
  end

  # UPDATE
  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect "/parties/#{party.id}"
  end

  # DESTROY
  delete '/:id' do
    party = Party.find(params[:id])
    party.delete
    redirect "/parties"
  end

end
