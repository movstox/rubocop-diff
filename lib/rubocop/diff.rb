$LOAD_PATH.unshift File.expand_path('../../', __FILE__)
require 'rubocop/diff/version'
require 'rubocop/diff/formatter'
require 'rubocop'
require 'pry-byebug'

module RuboCop
  class Diff
    def run(args)
      args << ' --format'
      args << ' RuboCop::Diff::Formatter'
      RuboCop::CLI.new.run(args)
    end
  end
end
