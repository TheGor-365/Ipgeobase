# frozen_string_literal: true

require "happymapper"
# Configures parsed data
class Address
  include HappyMapper

  tag "query"

  element :country, String, tag: "country"
  element :country_code, String, tag: "country_code"
  element :city, String, tag: "city"
  has_one :lat, Float
  has_one :lon, Float

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
