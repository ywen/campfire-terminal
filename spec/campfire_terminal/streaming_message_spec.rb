require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))
module CampfireTerminal
  describe StreamingMessage do
    let(:json_hash) {{"user_id" => "234", "body" => "a message"}}
    let(:json_string) {json_hash.to_json}
    let( :streaming_message ) {double :streaming_message}
    describe "#streaming" do
      before(:each) do
        Yajl::HttpStream.stub(:get).and_yield json_string
      end
      
      it "should stream the url" do
        Yajl::HttpStream.should_receive(:get).with('url').and_yield json_string
        StreamingMessage.streaming("url") {|message|}
      end

      it "should build a new message object and yield to it" do
        StreamingMessage.should_receive(:new).with(json_string).and_return streaming_message
        StreamingMessage.streaming("url") {|message| message.should == streaming_message}
      end
    end
  end
end
