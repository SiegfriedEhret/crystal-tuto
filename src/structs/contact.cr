require "yaml"

module Myapp
  struct Contact
    include YAML::Serializable
    property name : String
    property emails : Array(String)?

    def initialize(@name : String, @emails : Array(String)?)
    end

    def print
      emails = @emails

      puts "#{@name}: #{if emails.nil?
                          "no email found"
                        else
                          emails.join(", ")
                        end}"
    end
  end
end
