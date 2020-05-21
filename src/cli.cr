require "option_parser"
require "./commands/*"

module Myapp
  DEFAULT_COMMAND = "help"

  def self.run
    OptionParser.parse(ARGV) do |opts|
      opts.unknown_args do |args, options|
        command = args[0]? || DEFAULT_COMMAND

        case command
        when "help"
          Commands::Help.run
        when "version"
          Commands::Version.run
        else
          puts "Unknown command: #{command}"
        end
      end
    end
  end
end
