module CampfireTerminal
  class StreamingMessage < RestResource::Resource
    class << self
      def streaming(url)
        Yajl::HttpStream.get(url) do |json|
          yield self.new(json)
        end
      end
    end

    def message
      body
    end
  end
end
