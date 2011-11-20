require "rest_resource"
require 'active_support/inflector'
require 'active_support/core_ext/string'
require 'active_support/json'
require "yajl/http_stream"
Dir["#{File.expand_path(File.join(File.dirname(__FILE__)))}/campfire_terminal/**/*.rb"].each { |f| require f }

module CampfireTerminal
  module Main
    def self.start(room_id)
      config = CampfireTerminal::Config.new(ENV["CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION"] || "~", room_id)
      Streaming.new(config).start
    end
  end
end
