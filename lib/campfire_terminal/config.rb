require 'uri'
module CampfireTerminal
  class Config
    attr_reader :base_dir, :room_id
    private :base_dir, :room_id
    def initialize(base_dir, room_id)
      @base_dir = base_dir
      @room_id = room_id
    end

    def streaming_url
      URI.parse(%Q|http://#{config_info["authentication"]["token"]}:x@streaming.campfirenow.com/room/#{room_id}/live.json|)
    end

    private
    def config_info
      YAML.load_file("#{File.expand_path(base_dir)}/.campfire_terminal.yml")
    end
  end
end
