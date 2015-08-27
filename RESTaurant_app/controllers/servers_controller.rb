class ServersController < ApplicationController

  # INDEX
  get '/' do
    @servers = Server.all
    erb :'servers/index'
  end

  # NEW
  get '/new' do
    erb :'servers/new'
  end

  # CREATE
  post '/' do
    server = Server.create(params[:server])
    redirect "admin/servers"
  end

  # SHOW
  get '/:id' do
    @server = Server.find(params[:id])
    erb :'servers/show'
  end

  # EDIT
  get '/:id/edit' do
    @server = Server.find(params[:id])
    erb :'servers/edit'
  end

  # UPDATE
  put "/:id" do
    server = Server.find(params[:id])
    server.update(params[:server])
    redirect "admin/servers"
  end

  # DESTROY
  delete "/:id" do
    server = Server.find(params[:id])
    server.delete
    redirect "admin/servers"
  end

end
