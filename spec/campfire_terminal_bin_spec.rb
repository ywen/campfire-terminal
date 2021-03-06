require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))
load File.expand_path(File.join(File.dirname(__FILE__), "..", "bin", "campfire-terminal"))

describe 'CampfireTerminal bin' do
  describe "when pased in start sub command" do
    it "should call start" do
      CampfireTerminal::Main.should_receive(:start).with(2341)
      CampfireTerminalApp.start(["start", 2341])
    end
  end
end

