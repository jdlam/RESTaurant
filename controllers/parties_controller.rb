class PartiesController < ApplicationController

  # INDEX
  get '/' do
    @parties = Party.all.sort_by { |party| party.table_id }
    erb :'parties/index'
  end

  get '/all' do
    @parties = Party.all.sort_by { |party| party.table_id }
    erb :'parties/indexAll'
  end

  # NEW
  get '/new' do
    @servers = Server.all
    erb :'parties/new'
  end

  # CREATE
  post '/' do
    party = Party.create(params[:party])
    redirect "/orders/#{ party.id }/new"
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
    redirect "/#{party.id}"
  end

  # DESTROY
  delete '/:id' do
    party = Party.find(params[:id])
    party.orders.each do |order|
      order.delete
    end
    party.delete
    redirect "/"
  end

end
