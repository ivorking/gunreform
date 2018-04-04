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
    @matchvar = false
    @name1 = params[:name1].upcase!
    @name2 = params[:name2].upcase!

    @PolArray = Pol.all.map {|e| e.attributes.values}

    @PolArray.each_with_index do | key, value |
      if @PolArray[value][1].upcase == @name1
        # if @PolArray[value][8].upcase == @name2
          @user = current_user
          # @user.Pol << Pols.id 
        # end
        binding.pry
      end
    end
  end
end
