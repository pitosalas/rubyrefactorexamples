require_relative '../actor.rb'

#describe, it, let, should, before, 

describe Actor do
  let (:a1) { Actor.new(first: "Tim", last: "Hickey") }

  it "Can have a first name" do
    a1.first.should == "Tim"
  end

  it "Can have a last name" do
    a1.last.should == "Hickey"
  end

  it { a1.like?.should == false }

  it "Can have likers" do
    a1.add_liker ("abc")
    a1.like?.should == true
  end

end
