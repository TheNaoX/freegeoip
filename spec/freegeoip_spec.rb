require "spec_helper"

describe Freegeoip do
  it "has a version number" do
    expect(Freegeoip::VERSION).not_to be nil
  end

  describe ".get" do
    it "returns a response object" do
      res = Freegeoip.get('google.com')

      expect(res).to be_kind_of(Freegeoip::Response)
    end

    it "returns the data from google.com" do
      res = Freegeoip.get('google.com')

      expect(res.ip).to_not be_empty
      expect(res.country_code).to eq "US"
      expect(res.country_name).to eq "United States"
      expect(res.region_code).to eq "CA"
      expect(res.region_name).to eq "California"
      expect(res.city).to eq "Mountain View"
      expect(res.zip_code).to eq "94043"
      expect(res.time_zone).to eq "America/Los_Angeles"
      expect(res.latitude).to eq 37.4192
      expect(res.longitude).to eq -122.0574
      expect(res.metro_code).to eq 807
    end
  end
end
