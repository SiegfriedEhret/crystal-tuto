module Myapp
  module Commands
    class Help
      def self.run
        puts <<-HELP
      myapp <command> [<options>]

      TODO
     HELP

        exit
      end
    end
  end
end
