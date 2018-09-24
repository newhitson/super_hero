class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]  
  
  def common
      @hero_name = Faker::Superhero.name
      @hero_power = Faker::Superhero.power
      @hero_prefix = Faker::Superhero.prefix
      @corp_title = Faker::Name.title
      @corp_power = Faker::Company.bs
      @corp_power = @corp_power.titleize
      
      @bg_num= rand(1..2)
      @set_num = rand(1..2)
      
      @avatar = Faker::Avatar.image(@hero_name,"300x300","png","set#{@set_num.to_s}","bg#{@bg_num.to_s}")
  end
  
  def index
  end
  
  def team
    @team_number = params[:team_number].to_i
  end
  
end
