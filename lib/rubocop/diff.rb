$LOAD_PATH.unshift File.expand_path('../../', __FILE__)
require 'rubocop/diff/version'
require 'rubocop/diff/formatter'
require 'rubocop'

module RuboCop
  class Diff
    def run
      RuboCop::CLI.new.run([
      '--format', 'RuboCop::Diff::Formatter'
      ])
    end
  end
end
