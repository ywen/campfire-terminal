require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))
module CampfireTerminal
  describe Main do
    describe ".start" do
      let(:config) {double :config}
      let(:streaming) {double :streaming, :start => true}
      before(:each) do
        Config.stub(:new).and_return config
        Streaming.stub(:new).and_return streaming
      end
      
      after(:each) do
        Main.start 3451
      end
      context "when no CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION is defined" do
        it "should build a config object with default directory" do
          Config.should_receive(:new).with("~", 3451).and_return config
        end
      end
      context "when CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION is defined" do
        it "should build a config object with default directory" do
          ENV["CAMPFIRE_TERMINAL_CONFIG_FILE_LOCATION"] = "some_dir"
          Config.should_receive(:new).with("some_dir", 3451).and_return config
        end
      end

      it "should initialize a streaming object" do
        Streaming.should_receive(:new).with(config).and_return streaming
      end

      it "should start the streaming" do
        streaming.should_receive :start
      end
    end
  end
end

