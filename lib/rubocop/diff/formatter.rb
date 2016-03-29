require 'rubocop/formatter/base_formatter'
module RuboCop
  class Diff
    class Formatter < RuboCop::Formatter::BaseFormatter
      def file_finished(file, offenses)
        puts "file_finished"
      end
    end
  end
end
