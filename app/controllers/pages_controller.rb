class PagesController < ApplicationController
  def home
  end

  def selector 
  end

  def visualiser
  end

  def campaign
  end

  def donations
  end

  def library
  end

  def links
  end

  def news
  end

  def aboutus
  end

  def contact
  end

  def display_selection

    @name1 = params[:name1].upcase
    if @name1 == nil
      @name1 = "test"
    end
    @name2 = params[:name2].upcase
    if @name2 == nil
      @name2 = "test"
    end

    @user = current_user
    @pol = Pol.find_by(name_first: @name1, name_last: @name2)
    if @pol != nil
      @user.pols << @pol
      @outputmsg = "Match found in the politician database!"
    else
      @outputmsg = "No match found in the politician database!"
    end 

  end
end
