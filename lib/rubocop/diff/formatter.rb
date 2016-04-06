require 'rubocop/formatter/base_formatter'
module RuboCop
  class Diff
    class Formatter < RuboCop::Formatter::BaseFormatter

      def initialize(*args)
        exit(1) unless in_git_dir?
        super
      end

      def file_finished(file, offenses)
        puts "file_finished"
      end

      private

      def in_git_dir?
        Dir.exist?('.git')
      end
    end
  end
end
