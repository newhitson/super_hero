class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]  
  
  def common
      @name = "Nick destroyer of worlds Whitson"
  end
  
  def index
  end
  
  def team
  end
  
end
