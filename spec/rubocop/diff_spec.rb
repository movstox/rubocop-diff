require 'spec_helper'

describe Rubocop::Diff do
  it 'has a version number' do
    expect(Rubocop::Diff::VERSION).not_to be nil
  end

  it 'passes command line options to rubocop' do
    cli = object_double(RuboCop::CLI.new)
    expect(RuboCop::CLI).to receive(:new).and_return(cli)
    expect(cli).to receive(:run).with(
      " --format RuboCop::Diff::Formatter"
    )
    RuboCop::Diff.new.run("")
  end
end
