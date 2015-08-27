class WelcomeController < ApplicationController
  get '/' do
    @parties = Party.all.sort_by { |party| party.created_at }
    erb :'parties/index'
  end
end
