require 'json'
require 'uri'
require 'net/http'

module Freegeoip
  class Request
    ENDPOINT = "http://freegeoip.net/"
    FORMAT = 'json'

    attr_reader :remote

    def initialize(remote)
      @remote = remote
    end

    def get
      uri = URI(ENDPOINT + FORMAT + "/" + remote)
      res = Net::HTTP.get(uri)

      JSON.parse(res)
    end
  end
end
