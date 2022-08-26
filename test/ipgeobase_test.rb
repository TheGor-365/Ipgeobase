# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  GET_XML_INFO = "http://ip-api.com/xml/81.200.23.8?fields=country,countryCode,city,lat,lon"

  def get_xml
    stub_request(:get, GET_XML_INFO).
    with(
      headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Ruby'
        }).
        to_return(status: 200, body: "", headers: {})
  end
end
