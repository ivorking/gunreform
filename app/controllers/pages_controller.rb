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

  def grid
  end

  def display_selection

    @name1 = params[:name1].upcase!
    if @name1 == nil
      @name1 = "test"
    end
    @name2 = params[:name2].upcase!
    if @name2 == nil
      @name2 = "test"
    end

    @namechosen = @name1 + " " + @name2

    @pol = Pol.find_by :name => @namechosen
    if @pol != nil
      @user.pols << @pol
    else
      @outputmsg = "No match found in the politician database!"
    end 

    # @PolArray = Pol.all.map {|e| e.attributes.values}



    # @PolArray.each_with_index do | key, value |
    #   if @PolArray[value][1].upcase == @name1
    #     # if @PolArray[value][8].upcase == @name2
    #       @user = current_user
    #       @user.pols << Pol.find(value)
    #     # end
    #     binding.pry
    #   end
  end
end
