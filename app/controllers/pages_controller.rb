# Gun Law Reform Site
# by Ivor King, 2018
# Licence: CC BY

class PagesController < ApplicationController
  def home
    @user = current_user
    if @user != nil
      @user_check = @user.pols.find_by(id: @user)
    end
  end

  def selector 
  end

  def visualiser
  end

  def campaign
  end

  def secondamend
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
    
    require 'open-uri'

    @name1 = params[:name1].upcase
    if @name1 == nil
      @name1 = "empty"
    end
    
    @name2 = params[:name2].upcase
    if @name2 == nil
      @name2 = "empty"
    end

    @name_selected = @name1 + " " + @name2
    @user = current_user

    @pol = Pol.find_by(name_first: @name1, name_last: @name2)

    if @pol != nil
      @outputmsg = "Match found in the database!"
      if @user == nil     
        @outputmsg << " However, you'll need to log in or sign up first to track and save your selection."
      else
        @user.pols << @pol
      end
    else
      @outputmsg = "No match found in the database."
    end 

    # Site currently uses scrape from opensecrets.org for funding data, and is limited to the US House of Reps. This will be expanded once the op9ensecrets.org API is in use.

    @base_url = 'https://www.politico.com/interactives/2017/gun-lobbying-spending-in-america-congress/'
    @raw_data = Nokogiri::HTML(open( @base_url ))
    @candidate_list = @raw_data.css('td:nth(1)').map &:text
    @funding_list = @raw_data.css('td:nth(2)').map &:text
    @candidate_list.each_with_index do | value, index |
      if @candidate_list[index].upcase == @name_selected
        @locatormsg = "Match found to gun lobby finance website - US House of Representatives members. Candidate has received US #{@funding_list[index]} from gun lobby groups over the course of their career (from 1990, as at Oct 2017)."
      end
    end
  end
end
