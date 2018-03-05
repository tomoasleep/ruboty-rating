# Ruboty::Rating

Run [Elo rating](https://en.wikipedia.org/wiki/Elo_rating_system) system on Ruboty.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-rating'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-rating

## Usage

```
$ ruboty
Type `exit` or `quit` to end the session.
> @ruboty help
ruboty /(?<left_player>\w+)(?:\s+)(?<result>[<>])(?:\s+)(?<right_player>\w+)$/ - Remember a game result
ruboty /delete\s+player\s+(?<player>\w+)/ - Show rating of a player
ruboty /set\s+rating\s+(?<player>\w+)\s+(?<new_rating>\d+)/ - Set rating of a player manually
ruboty /show\s+rating\s+(?<player>\w+)/ - Show rating of a player
ruboty /show\s+ratings/ - Show ratings of all player
ruboty /help( me)?(?: (?<filter>.+))?\z/i - Show this help message
ruboty /ping\z/i - Return PONG to PING
ruboty /who am i\?/i - Answer who you are
> @ruboty player1 > player2
player1: 1500 -> 1512
player2: 1500 -> 1488
> @ruboty player3 > player2
player3: 1500 -> 1512
player2: 1488 -> 1476
> @ruboty player1 > player4
player1: 1512 -> 1524
player4: 1500 -> 1488
> @ruboty show ratings
player1: 1524
player3: 1512
player4: 1488
player2: 1476
> @ruboty set rating player1 530000
Updated the rating of player1: 530000
> @ruboty show rating player1
player1: 530000
> @ruboty delete player player2
Deleted player2
> @ruboty show ratings
player1: 530000
player3: 1512
player4: 1488
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomoasleep/ruboty-rating. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

