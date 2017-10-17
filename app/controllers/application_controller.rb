require 'sinatra/base'
require_relative '../models/hero.rb'
require_relative '../models/team.rb'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :super_hero
    end


end
