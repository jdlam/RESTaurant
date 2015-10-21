class KitchensController < ApplicationController

  get '/' do
    @party = Party.all.sort_by { |party| party.created_at }
    erb :'kitchen/index'
  end

  post '/' do
    party = Party.find(params[:id])
    party.update(food_ready: true)
    redirect '/kitchen/'
  end

end
