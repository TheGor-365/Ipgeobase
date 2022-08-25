# frozen_string_literal: true

require "happymapper"
# Configures parsed data
class Address
  include HappyMapper

  tag "query"

  element :country, String, tag: "country"
  element :country_code, String, tag: "countryCode"
  element :city, String, tag: "city"
  element :lat, Float, tag: "lat"
  element :lon, Float, tag: "lon"

  def lat
    puts @lat.round(2)
  end

  def lon
    puts @lon.round(2)
  end

  def country
    puts @country
  end

  def country_code
    puts @country_code
  end

  def city
    puts @city
  end
end
