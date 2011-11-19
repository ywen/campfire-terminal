require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))
module CampfireTerminal
  describe Streaming do
    let(:config) {double :config, :streaming_url => "streaming_url"}
    subject {Streaming.new config}
    describe "#start" do
      it "should get the streaming URL" do
        config.should_receive(:streaming_url).and_return("streaming_url")
        subject.start
      end
    end
  end
end

