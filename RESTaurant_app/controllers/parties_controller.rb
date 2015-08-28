class PartiesController < ApplicationController

  # INDEX
  get '/' do
    @parties = Party.all.sort_by { |party| party.created_at }
    erb :'parties/index'
  end

  get '/receipts' do
    @parties = Party.all.sort_by { |party| party.created_at }
    erb :'receipts/index'
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

  get '/:id/receipt' do
    @party = Party.find(params[:id])
    erb :'receipts/show'
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
