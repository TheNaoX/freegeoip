module Freegeoip
  class Response
    attr_reader :ip, :country_code, :country_name,
      :region_code, :region_name, :city, :zip_code,
      :time_zone, :latitude, :longitude, :metro_code

    def initialize(attrs)
      attrs.each do |key, value|
        instance_variable_set "@#{key}", value
      end
    end
  end
end
