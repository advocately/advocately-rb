# Advocately RubyGem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'advocately'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install advocately

## Usage

```
def find_or_create_record(item)
  ## do something here to save reviews
end

def save_response(response)
  response.each do |item|
    find_or_create_record(item)
  end
end

def paginate_response(response)
  save_response(response)
  paginate_response(response.pages.next) if response.pages.links['next']
end

require 'advocately'
Advocately::Base.api_token = 'test'
Advocately::Base.app_id = 'test'

response = Advocately::Review.includes(:contact).page(size: 100)
paginate_response(response.all)

```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/advocately/advocately-rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

