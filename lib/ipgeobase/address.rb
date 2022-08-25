# frozen_string_literal: true

require "happymapper"
# Configures parsed data
class Address
  include HappyMapper

  tag "query"

  element :country, String, tag: "country"
  element :country_code, String, tag: "countryCode"
  element :city, String, tag: "city"
  has_one :lat, Float
  has_one :lon, Float

  def lat
    @lat.round(2)
  end

  def lon
    @lon.round(2)
  end
end
