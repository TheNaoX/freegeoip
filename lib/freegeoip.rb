require "freegeoip/version"
require "freegeoip/request"
require "freegeoip/response"

module Freegeoip
  def self.get(remote)
    request = Request.new(remote)
    Response.new(remote, request.get)
  end
end
