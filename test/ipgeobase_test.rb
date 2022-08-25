# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  include WebMock::API
  GET_XML_INFO = "http://ip-api.com/xml/81.200.23.8?fields=country,countryCode,city,lat,lon"

  def test_xml_data
    body = ''
    stub_request(:get, GET_XML_INFO).to_return(status: 200, body: body)
  end
end
