module CampfireTerminal
  class Config
    attr_reader :base_dir
    def initialize(base_dir = "~")
      @base_dir = base_dir
    end
  end
end
