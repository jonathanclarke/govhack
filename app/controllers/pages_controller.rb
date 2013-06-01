require 'json'

class PagesController < ApplicationController

  def about
  end

  def contact
  end

  def home
    json_data = File.read("#{ Rails.root }/db/data/universities.json")
    @universities = JSON.parse(json_data)
  end

end
