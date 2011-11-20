require "campfire_terminal/version"
require "rest_resource"
require 'active_support/inflector'
require 'active_support/core_ext/string'
require 'active_support/json'
require "yajl/http_stream"

module CampfireTerminal
  module Main
    def self.start(room_id)
      config = Config.new(ENV["CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION"] || "~", room_id)
      Streaming.new(config).start
    end
  end
end
