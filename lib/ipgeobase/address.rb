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
end
