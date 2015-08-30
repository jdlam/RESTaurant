class ReceiptsController < ApplicationController
  # INDEX
  get '/' do
    @parties = Party.all.sort_by { |party| party.created_at }
    @receipts = Receipt.all
    erb :'receipts/index'
  end

  # SHOW
  get '/:id' do
    @party = Party.find(params[:id])
    erb :'receipts/show'
  end

  # CREATE RECEIPT + UPDATE PARTY
  post '/:id' do
    party = Party.find(params[:id])
    receipt = Receipt.create(params[:receipt])
    party.update(has_paid: true)
    redirect '/'
  end

end
