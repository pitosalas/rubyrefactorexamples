require_relative "../movie.rb"
require_relative "../person.rb"
require_relative "../actor.rb"
require 'pp'


describe Movie do
	let (:m1) { Movie.new(title: "The World According to Garp")}
	it { m1.should respond_to :title}
	it { m1.like?.should == false }
end

describe Actor do
	let (:a1) { Actor.new(person: Person.new(first: "Tim", last: "Hickey")) }
	it { a1.first.should == "Tim" }
	it { a1.like?.should == false }
end

describe "a person can like a movie or an actor" do
	let (:p1) { Person.new(first: "Tim", last: "Hickey")}
	let (:m1) { Movie.new(title: "Gone with the wind")}
	let (:a1) { Actor.new(person: Person.new(first: "Scott", last: "Marhsall"))}

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

	describe "An actor gets a person setup" do
		let(:act1) { Actor.new(person: Person.new(first: "Jack", last: "Nicholson"))}
		it { act1.person.class.should == Person}
		it { act1.person.first.should == "Jack"}
	end

	describe "movie can have a director" do
		before { m1.director = p1 }
		it { m1.director.first.should == "Tim" }
	end

	describe "movie can have a star" do
		before do 
			a1.type = :comedic
			m1.star = a1
		end
		it {a1.should_not be_nil }
		it { m1.star.first.should == "Scott" }
	end

	describe "movie's star is a comedic" do
		before {m1.star = a1 }
		it {m1.star.type = :comedic }
	end

end

describe "an actor" do
	let (:a1) { Actor.new(person: Person.new(first: "Carrie", last: "Grant")) }
	
	describe "a comedic actor" do
		before {a1.type = (:comedic) }
		it {a1.type.should == :comedic }
	

		describe "comedic actor is start of movie" do
			let (:m1) { Movie.new(title: "Gone widda Wind", star: a1)}
			it { m1.star.type.should == :comedic }
		end
	end
end

