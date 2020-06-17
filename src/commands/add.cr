require "../lib/config"
require "../structs/*"

module Myapp
  module Commands
    class Add
      def initialize(@config : Config, args : Array(String))
        name = args.find { |el| el.starts_with? "name=" }

        emails = args
          .select { |el| el.starts_with? "email=" }
          .map { |el| el.split("=")[1] }

        add(name, emails)
      end

      def add(name : String | Nil, emails : Array(String))
        if name.nil?
          puts "We need a name!"
        else
          @config.add_contact Contact.new(name.split("=")[1], emails)
        end
      end
    end
  end
end
