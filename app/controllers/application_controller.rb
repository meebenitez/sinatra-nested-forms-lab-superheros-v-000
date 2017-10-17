require 'sinatra/base'
require_relative '../models/hero.rb'
require_relative '../models/team.rb'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  


end
