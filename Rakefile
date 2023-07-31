# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rake/clean'
require 'jekyll/react-player/version'

RSpec::Core::RakeTask.new(:spec)

# Execute tests per default
task default: :spec

# The 'clobber' task removes the final product, compared to the
# 'clean' task which removes which removes all intermedidate files but
# not the final product.
CLEAN.include('pkg/*').exclude('pkg/*.gem')
CLOBBER << "pkg/jekyll-react-player-#{Jekyll::ReactPlayer::VERSION}.gem"
