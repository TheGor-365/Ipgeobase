require 'happymapper'

class Address
  include HappyMapper

  tag 'query'

  element :country, String, tag: 'country'
  element :countryCode, String, tag: 'countryCode'
  element :city, String, tag: 'city'
  has_one :lat, Float
  has_one :lon, Float

  def lat; @lat.round(2); end
  def lon; @lon.round(2); end
end
