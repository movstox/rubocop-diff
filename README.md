# Rubocop::Diff

Rubocop-diff runs rubocop, but gives you a report only for the lines you have changed. This can be useful in particularly nasty projects where you can't fix entire files at a time.

## Manual Dependencies
Git: You will need git installed as rubocop-diff uses it to to figure out the diff

## Installation

You probably have rubocop installed globally, so you want rubocop-diff installed globally too.
```bash
$ gem install rubocop-diff
```

Or, you could add this line to your application's Gemfile:

```ruby
gem 'rubocop-diff'
```

And then execute:

    $ bundle

## Usage

Just run
```bash
$ rubocop-diff
```
in your working directory

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mcgain/rubocop-diff.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

