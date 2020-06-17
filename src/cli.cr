require "option_parser"
require "./commands/*"
require "./lib/config"

module Myapp
  DEFAULT_COMMAND = "help"

  def self.run
    config = Config.new

    OptionParser.parse(ARGV) do |opts|
      opts.unknown_args do |args, options|
        command = args[0]? || DEFAULT_COMMAND

        case command
        when "add"
          Commands::Add.new(config, args[1..-1])
        when "help"
          Commands::Help.run
        when "show"
          Commands::Show.new(config, args[1..-1])
        when "version"
          Commands::Version.run
        else
          puts "Unknown command: #{command}"
        end
      end
    end
  end
end
