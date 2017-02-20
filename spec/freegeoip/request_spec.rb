require 'spec_helper'

describe Freegeoip::Request do
  describe '#get' do
    it 'returns a hash with attributes' do
      res = Freegeoip::Request.new('google.com')

      expect(res.get).to be_kind_of Hash
    end
  end
end
