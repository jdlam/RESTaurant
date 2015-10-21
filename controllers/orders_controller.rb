class OrdersController < ApplicationController

  # INDEX
  get '/:partyid' do
    @party = Party.find(params[:partyid])
    erb :'orders/index'
  end

  # NEW
  get '/:partyid/new' do
    @party = Party.find(params[:partyid])
    @categories = Category.all.sort_by { |cat| cat.name }
    @foods = Food.all
    erb :'orders/new'
  end

  # CREATE
  post '/:partyid' do
    @party = Party.find(params[:partyid])
    order = Order.create(params[:order])
    # update the order's cost
    order.update({total_cost: order.food.cost})
    # update the party's tab
    @party.update(tab: (@party.tab + order.total_cost))
    redirect "/orders/#{ @party.id }/new"
  end

  # SHOW

  # EDIT
  get '/:partyid/:orderid/edit' do
    @party = Party.find(params[:partyid])
    @order = Order.find(params[:orderid])
    # Subtract the order's cost from the party tab
    @party.update(tab: (@party.tab - @order.total_cost))
    @foods = Food.all
    erb :'orders/edit'
  end

  # UPDATE
  put '/:partyid/:orderid' do
    @party = Party.find(params[:partyid])
    order = Order.find(params[:orderid])
    order.update(params[:order])
    # Update the party's tab with the new updated order
    @party.update(tab: (@party.tab + order.total_cost))
    redirect "/orders/#{ @party.id }"
  end

  # DESTROY
  delete '/:partyid/:orderid' do
    @party = Party.find(params[:partyid])
    order = Order.find(params[:orderid]).delete
    redirect "/orders/#{ @party.id }"
  end

end
