require "campfire_terminal/version"

module CampfireTerminal
  module Main
    def self.start
      config = Config.new(ENV["CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION"] || "~")
    end
  end
end
