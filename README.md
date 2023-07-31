# Jekyll::ReactPlayer
[![.github/workflows/gem-build.yml][badge-build]][build]
[![Gem Version][badge-gem]][rubygems]
[![Gem][badge-dl]][rubygems]
[![License][badge-license]][license]

Provides a [Liquid][liquid] tag for embedding all formats supported by [react-player](https://github.com/cookpete/react-player#supported-media) in [Jekyll][jekyll] sites.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-react-player'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```
$ gem install jekyll-react-player
```

## Usage

Use the tag as follows in your Jekyll pages and posts:

```ruby
{% reactplayer https://example.com/asset %}
```

This will render the associated script tag.


## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `bin/console` for an interactive prompt that will allow you
to experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release` to create a git
tag for the version, push git commits and tags, and push the `.gem`
file to [rubygems.org](https://rubygems.org).

## Contributing

Contributions are, of course, welcome. Please submit a pull request.

## License

Code is under [AGPLv3 License][license].


[build]: ./actions/workflows/gem-build.yml
[badge-build]: ./actions/workflows/gem-build.yml/badge.svg
[badge-coveralls]: https://coveralls.io/repos/jessp01/jekyll-react-player/badge.svg
[badge-gem]: https://badge.fury.io/rb/jekyll-react-player.svg
[badge-license]: https://img.shields.io/github/license/mnuessler/jekyll-react-player.svg?maxAge=604800
[rubygems]: https://rubygems.org/gems/jekyll-react-player
[liquid]: http://liquidmarkup.org "Liquid templating language"
[jekyll]: http://jekyllrb.com "Jekyll"
[license]: ./LICENSE
