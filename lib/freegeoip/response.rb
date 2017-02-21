module Freegeoip
  class Response
    attr_reader :remote, :ip, :country_code, :country_name,
      :region_code, :region_name, :city, :zip_code,
      :time_zone, :latitude, :longitude, :metro_code

    def initialize(remote, data)
      @remote = remote
      data.each do |key, value|
        instance_variable_set "@#{key}", value
      end
    end
  end
end
