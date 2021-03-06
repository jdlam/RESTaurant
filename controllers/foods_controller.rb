class FoodsController < ApplicationController


  # INDEX
  get '/' do
    @foods = Food.all.sort_by { |obj| obj.category.name }
    erb :'foods/index'
  end

  # NEW
  get '/new' do
    @categories = Category.all.sort_by { |category| category.name }
    erb :'foods/new'
  end

  # CREATE
  post '/' do
    food = Food.create(params[:menu_item])
    redirect '/admin/foods'
  end

  # SHOW
  get '/:id' do
    @food = Food.find(params[:id])
    erb :'foods/show'
  end

  # EDIT
  get '/:id/edit' do
    @food = Food.find(params[:id])
    @categories = Category.all.sort_by { |obj| obj.name}
    erb :'foods/edit'
  end

  # UPDATE
  put '/:id' do
    food = Food.find(params[:id])
    food.update(params[:menu_item])
    redirect "/admin/foods"
  end

  # DESTROY
  delete '/:id' do
    food = Food.find(params[:id])
    food.orders.delete
    food.delete
    redirect '/admin/foods'
  end




end
