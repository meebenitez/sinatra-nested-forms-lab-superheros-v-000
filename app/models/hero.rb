class Hero
  attr_accessor :name, :power, :biography

  HEROES = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    HEROES << self
  end


  def self.all
    HEROES
  end


end
