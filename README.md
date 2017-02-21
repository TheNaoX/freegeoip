# Freegeoip Ruby

A Ruby library for the [Freegeoip API](http://freegeoip.net).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'freegeoip-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freegeoip-ruby

## Usage

Anywhere in your code

```ruby
require 'freegeoip'

Freegeoip.get('google.com')
 => #<Freegeoip::Response:0x007fbc8a299a98 @remote="google.com", @ip="2607:f8b0:4006:804::200e", @country_code="US", @country_name="United States", @region_code="", @region_name="", @city="", @zip_code="", @time_zone="", @latitude=37.751, @longitude=-97.822, @metro_code=0>
```

In the command line

```bash
$ freegeoip get google.com
Searching for: google.com
------------------------
IP: 172.217.5.14
Country code: US
Country name: United States
Region code: CA
Region name: California
City: Mountain View
ZIP Code: 94043
Time zone: America/Los_Angeles
Latitude: 37.4192
Longitude: -122.0574
Metro code: 807
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/TheNaoX/freegeoip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

