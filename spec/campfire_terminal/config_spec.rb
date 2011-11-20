require File.expand_path(File.join(File.dirname(__FILE__), "..", "spec_helper"))
module CampfireTerminal
  describe Config do
    let(:params) { {"authentication" => { "token" => "a_token" }} }
    subject {Config.new "base_url", 1234}
    before(:each) do
      YAML.stub(:load_file).and_return params
    end
     describe "#streaming_url" do
       it "should return the straming url" do
         subject.streaming_url.should == URI.parse("http://a_token:x@streaming.campfirenow.com//room/1234/live.json")
       end
     end


  end
end
