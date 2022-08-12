# Ipgeobase

![CI](https://github.com/TheGor-365/Ipgeobase/actions/workflows/main.yml/badge.svg)


## Summary

Ipgeobase gem that returns metadata about IP. This gem works with `https://ip-api.com` which allows you to get information by IP - for example, country, city, coordinates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install specific_install && gem specific_install -l https://github.com/TheGor-365/Ipgeobase


## Usage

The gem contains the `lookup('your_ip')` method, which accepts an IP address and returns a metadata object. Use next methods for
```ruby
require 'ipgeobase'

location = Ipgeobase.lookup('8.8.8.8')
puts location.country #=> United States
```

You can get:

* `city`
* `country`
* `country_code`
* `lat`
* `lon`

## Example

```ruby
location = Ipgeobase.lookup('8.8.8.8')

location.city # Ashburn
location.country # United States
location.country_code # US
location.lat # 39.03
location.lon # -77.5
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run: 
```
$ gem install specific_install && gem specific_install -l https://github.com/TheGor-365/Ipgeobase
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/TheGor-365/ipgeobase.
