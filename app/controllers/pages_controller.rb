class PagesController < ApplicationController
  def home
  end

  def blogs
  end

  def donations
  end

  def visualiser
  end

  def selector 
  end

  def display_selection
    @name1 = params[:name1]
    @name2 = params[:name2]

    @PolArray = Pol.all.map {|e| e.attributes.values}

  end

end
