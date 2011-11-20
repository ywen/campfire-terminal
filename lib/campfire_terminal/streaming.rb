module CampfireTerminal
  class Streaming
    attr_reader :config
    private :config
    def initialize(config)
      @config = config
    end

    def start
      url = config.streaming_url
      StreamingMessage.streaming(url) do |message|
        puts message.message
      end
    end
  end
end
