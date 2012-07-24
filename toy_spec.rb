require_relative "movie.rb"
require_relative "person.rb"
require_relative "actor.rb"


describe Movie do
	let (:m1) { Movie.new(title: "The World According to Garp")}
	it { m1.should respond_to :title}
	it { m1.like?.should == false }
end

describe Actor do
	let (:a1) { Actor.new(first: "Tim", last: "Hickey") }
	it { a1.first.should == "Tim" }
	it { a1.like?.should == false }
end

describe "a person can like a movie or an actor" do
	let (:p1) { Person.new(first: "Tim", last: "Hickey")}
	let (:m1) { Movie.new(title: "Gone with the wind")}
	let (:a1) { Actor.new(first: "Scott", last: "Marhsall")}

	it "p1 likes m1" do
		p1.likes(m1)
		m1.like?.should == true
	end
	it "p1 likes a1" do
		p1.likes(a1)
		a1.like?.should == true
	end

	describe "movie tracks who likes it" do
		before { p1.likes(a1) }
		it { a1.is_liked_by?(p1).should == true }
	end
end
