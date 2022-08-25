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
    @lat.round(2)
  end

  def lon
    @lon.round(2)
  end

  def country
    @country
  end

  def country_code
    @country_code
  end

  def city
    @city
  end
end
