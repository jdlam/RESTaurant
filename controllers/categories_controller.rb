class CategoriesController < ApplicationController


  # INDEX
  get '/' do
    @categories = Category.all.sort_by { |obj| obj.name }
    erb :'categories/index'
  end

  # NEW
  get '/new' do
    erb :'categories/new'
  end

  # CREATE
  post '/' do
    category = Category.create(params[:category])
    redirect '/admin/categories'
  end

  # EDIT
  get '/:id/edit' do
    @category = Category.find(params[:id])
    erb :'categories/edit'
  end

  # UPDATE
  put '/:id' do
    category = Category.find(params[:id])
    category.update(params[:category])
    redirect "/admin/categories"
  end

  # DESTROY
  delete '/:id' do
    categories = Category.find(params[:id])
    categories.foods.each do |food|
      food.delete
    end
    categories.delete
    redirect '/admin/categories'
  end




end
