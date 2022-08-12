# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class IpgeobaseTest < Minitest::Test
  include WebMock::API

  def test_api_url
    body = puts "\napi_url:\t200\n"
    stub_request(:get, "http://www.ip-api.com/").to_return(status: 200, body: body)
  end

  def test_xml_data_get
    body = puts "\nxml_data_get:\t200\n"

    uri_template = Addressable::Template.new("http://{host}{/segments*}{?fields}").expand({
      'host' => 'ip-api.com',
      'segments' => ['xml', "81.200.23.8"],
      'fields' => 'country,countryCode,city,lat,lon'
    })
    stub_request(:any, uri_template).to_return(status: 200, body: body)
  end
end
