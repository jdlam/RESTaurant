class OrdersController < ApplicationController

  get '/' do
    @party = Party.find(params[:partyid])
    erb :'orders/index'
  end

end
