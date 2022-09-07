# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  GET_XML_INFO = "http://ip-api.com/xml/81.200.23.8?fields=country,countryCode,city,lat,lon"

  def test_lookup
    body = '<?xml version="1.0" encoding="UTF-8"?>
            <query>
              <country>Russia</country>
              <countryCode>RU</countryCode>
              <city>Moscow</city>
              <lat>55.7483</lat>
              <lon>37.6171</lon>
            </query>'

    stub_request(:get, GET_XML_INFO).to_return(status: 200, body: body)
    address = Address.parse(body)

    assert_equal 'Russia', address.country
    assert_equal 'Moscow', address.city
    assert_equal 'RU', address.country_code
    assert_equal 55.7483, address.lat
    assert_equal 37.6171, address.lon
  end
end
