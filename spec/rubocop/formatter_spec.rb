require 'spec_helper'
require 'rubocop/diff/formatter'

describe RuboCop::Diff::Formatter do
  it "responds to file_finished" do
    expect(RuboCop::Diff::Formatter.new([])).to respond_to(:file_finished)
  end

  it "exits immediately if not in a git directory" do
    Dir.chdir(Dir.mktmpdir) do
      expect { RuboCop::Diff::Formatter.new([]) }.to raise_error(SystemExit)
    end
  end
end
