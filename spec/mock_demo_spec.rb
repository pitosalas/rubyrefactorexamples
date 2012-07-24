describe "a simple stub with no return value specified" do
  let(:receiver) { double("receiver") }

  it "returns nil" do
    receiver.stub(:message)
    receiver.message.should be(nil)
  end

  it "quietly carries on when not called" do
    receiver.stub(:message)
  end
end

describe "a simple stub with a return value" do
  context "specified in a block" do
    it "returns the specified value" do
      receiver = double("receiver")
      receiver.stub(:message) { :return_value }
      receiver.message.should eq(:return_value)
    end
  end

  context "specified in the double declaration" do
    it "returns the specified value" do
      receiver = double("receiver", :message => :return_value)
      receiver.message.should eq(:return_value)
    end
  end

  context "specified with and_return" do
    it "returns the specified value" do
      receiver = double("receiver")
      receiver.stub(:message).and_return(:return_value)
      receiver.message.should eq(:return_value)
    end
  end
end