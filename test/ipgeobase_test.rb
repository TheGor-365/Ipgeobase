# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  include WebMock::API
  API_URL = "http://ip-api.com/xml/81.200.23.8?country,countryCode,city,lat,lon"

  def test_xml_data_get
    request = URI.parse API_URL
    stub_request(:any, request).to_return(status: 200, body: 'hey')
    p assert :body != 'hey'
  end
end
