# ActsAsLockable

[UNMAINTAINED] This gem built to allowing records to be lockable. It's lock your records and let'em untouched.

[WARNING] This gem is deprecated and unmaintained. DWYOR!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acts_as_lockable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts_as_lockable

#### Database Migrations

Run:

``` shell
rails generate acts_as_lockable:migration
rake db:migrate
```

## Usage

#### Lockable Models

``` ruby
class Locker < ActiveRecord::Base
  acts_as_lockable

  # ...
end
```
#### Example

``` ruby
lovely_locker = Locker.create
lovely_locker.lock
lovely_locker.unlock
lovely_locker.is_locked?

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gizipp/acts_as_lockable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

