module Myapp
  module Commands
    class Help
      def self.run
        puts <<-HELP
      myapp <command> [<options>]

      Available commands:

        add name=<name> email=<email>   To add a contact
        show <partial name>             To list matching contacts
     HELP

        exit
      end
    end
  end
end
