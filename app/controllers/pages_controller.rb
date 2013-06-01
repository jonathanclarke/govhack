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

  def university
    json_data = File.read("#{ Rails.root }/db/data/universities/#{ params[:university_permalink] }.json")

    @university = JSON.parse(json_data)
  end

  def suburb
    json_data = File.read("#{ Rails.root }/db/data/universities/#{ params[:university_permalink] }.json")

    @university = JSON.parse(json_data)
    json_data = File.read("#{ Rails.root }/db/data/suburbs/#{ params[:suburb_permalink] }.json")

    @university = JSON.parse(json_data)
  end
end
