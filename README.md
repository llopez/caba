[![Build Status](https://travis-ci.org/llopez/caba.svg)](https://travis-ci.org/llopez/caba)

# Caba

Caba is a gem made for __educational purpose__. It returns information about Capital Federal neighborhoods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'caba', github: 'llopez/caba'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install caba

## Usage

### Command Line

Caba comes with a binary. You can use it this way:

    $ caba

### Ruby Application

```ruby
Caba.neighborhoods # return neighborhoods
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/caba/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
