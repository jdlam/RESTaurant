class AdminsController < ApplicationController

  # INDEX
  get '/' do
    erb :'admin/index'
  end

end
