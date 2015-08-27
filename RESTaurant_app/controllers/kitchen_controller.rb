class KitchensController < ApplicationController

  get '/' do
    @party = Party.all
    erb :'kitchen/index'
  end

end
