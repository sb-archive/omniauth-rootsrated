# OmniAuth RootsRated &nbsp;[![Build Status](https://secure.travis-ci.org/RootsRated/omniauth-rootsrated.png?branch=master)](https://travis-ci.org/RootsRated/omniauth-rootsrated)

**These notes are based on master, please see tags for README pertaining to specific releases.**

RootsRated OAuth2 Strategy for OmniAuth.

Supports the OAuth 2.0 server-side and client-side flows.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-rootsrated'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::RootsRated` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :rootsrated, ENV['ROOTSRATED_KEY'], ENV['ROOTSRATED_SECRET']
end
```

## Auth Hash

`request.env['omniauth.auth']` contains the response *Auth Hash* from RootsRated.

## Supported Rubies

Actively tested with the following Ruby versions:

- MRI 2.1.0
- MRI 2.0.0
- MRI 1.9.3
- MRI 1.9.2
- MRI 1.8.7
- JRuby 1.7.9
- Rubinius (latest stable)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RootsRated/omniauth-RootsRated/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
