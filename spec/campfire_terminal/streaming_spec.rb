require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))
module CampfireTerminal
  describe Streaming do
    let(:config) {double :config, :streaming_url => "streaming_url"}
    let(:streaming_message) {
      double :streaming_message, :message => "a message"
    }
    subject {Streaming.new config}
    describe "#start" do
      before(:each) do
        StreamingMessage.stub(:streaming).and_yield streaming_message
      end
      
      after(:each) do
        subject.start
      end

      it "should start streaming" do
        StreamingMessage.should_receive(:streaming).with('streaming_url').and_yield streaming_message
      end
      it "should printing the message" do
        subject.should_receive(:puts).with("a message")
      end
    end
  end
end

