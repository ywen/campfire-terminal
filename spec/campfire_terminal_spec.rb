require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))
module CampfireTerminal
  describe Main do
    describe ".start" do
      let(:config) {double :config}
      after(:each) do
        Main.start
      end
      context "when no CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION is defined" do
        it "should build a config object with default directory" do
          Config.should_receive(:new).with("~").and_return config
        end
      end
      context "when CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION is defined" do
        it "should build a config object with default directory" do
          ENV["CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION"] = "some_dir"
          Config.should_receive(:new).with("some_dir").and_return config
        end
      end
    end
  end
end

