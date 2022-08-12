# frozen_string_literal: true

require_relative "ipgeobase/version"
require "addressable/template"
require "happymapper"
require "net/http"

# Service to get location info by ip
module Ipgeobase
  class Error < StandardError; end

  class << self
    def lookup(ip)
      lookup_uri = Addressable::Template.new("http://{host}{/segments*}{?fields}")
                                        .expand({
                                                  "host" => "ip-api.com",
                                                  "segments" => ["xml", ip.to_s],
                                                  "fields" => "country,countryCode,city,lat,lon"
                                                })
      lookup_xml = Net::HTTP.get lookup_uri
      HappyMapper.parse lookup_xml
    end
  end
end
