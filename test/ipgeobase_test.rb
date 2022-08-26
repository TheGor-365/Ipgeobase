# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  GET_XML_INFO = "http://ip-api.com/xml/81.200.23.8?fields=country,countryCode,city,lat,lon"

  def test_uri
    stub_request(:get, GET_XML_INFO).
    with(
      headers: {
  	  'Accept'=>'*/*',
  	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
  	  'User-Agent'=>'Ruby'
      }).
    to_return(status: 200, body: "", headers: {})
  end

  def some_else
    ip_meta = Ipgeobase.lookup('81.200.23.8')

    assert ip_meta.country == 'Russia'
    assert ip_meta.city == 'Moscow'
    assert ip_meta.country_code == 'RU'
    assert ip_meta.lat == 55.75
    assert ip_meta.lon == 37.62
  end
end
