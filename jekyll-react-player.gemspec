# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/react-player/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-react-player'
  spec.version       = Jekyll::ReactPlayer::VERSION
  spec.authors       = ['Jesse Portnoy']
  spec.email         = ['jesse@packman.io']

  spec.summary       = %(Liquid tag for embedding react-player in Jekyll sites.)
  spec.description   =
    %(Provides a Liquid tag for embedding react-player supported formats in Jekyll sites.)
  spec.homepage      = 'https://github.com/jessp01/jekyll-react-player'
  spec.license       = 'AGPLv3'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5'

  #spec.cert_chain  = ['certs/']
  #spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $PROGRAM_NAME =~ /gem\z/

  spec.add_runtime_dependency 'jekyll', '>= 2.0'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'pry', '~> 0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.0'
  spec.add_development_dependency 'solargraph', '~> 0'
end
