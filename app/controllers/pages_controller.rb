# Gun Law Reform Site
# by Ivor King, 2018
# Licence: CC BY

class PagesController < ApplicationController
  def home
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

    @name1 = params[:name1].upcase
    if @name1 == nil
      @name1 = "test"
    end
    @name2 = params[:name2].upcase
    if @name2 == nil
      @name2 = "test"
    end

    @name_selected = @name1 + " " + @name2
    @user = current_user

    @pol = Pol.find_by(name_first: @name1, name_last: @name2)
    if @pol != nil
      @user.pols << @pol
      @outputmsg = "Match found in the site politician database!"
    else
      @outputmsg = "No match found in the site politician database."
    end 

    # Site currently uses scrape from opensecrets.org for funding data, and is limited to the US House of Reps. This will be expanded once a suitable API has been chosen.

    require 'open-uri'
    @base_url = 'https://www.politico.com/interactives/2017/gun-lobbying-spending-in-america-congress/'
    @raw_data = Nokogiri::HTML(open( @base_url ))
    @candidate_list = @raw_data.css('td:nth(1)').map &:text
    @funding_list = @raw_data.css('td:nth(2)').map &:text
    @candidate_list.each_with_index do | value, index |
      if @candidate_list[index].upcase == @name_selected
        @locatormsg = "Match found to gun lobby finance website - US House of Representatives members. Candidate received US #{@funding_list[index]} over the course of their career (as at Oct 2017)."
      end
    end
  end
end
