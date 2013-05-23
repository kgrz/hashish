# Hashish

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'hashish'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hashish

## Usage

```ruby
class A
  
  include Hashish
  attr_reader :a, :b, :c

  def initialize(a, b ,c)
    @a, @b, @c = a, b, c
  end
end
```
and you can do this:

```ruby

a = A.new(1,2,3)
a.to_hash # => {:a => 1, :b => 2, :c => 3}
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
