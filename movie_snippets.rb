class Movie
	attr_accessor :director, :star, :year
end

class Actor
	attr_accessor :first_name, :last_name
end

class Director
	attr_accessor :first_name, :last_name
end

m = Movie.new
m.star = Actor.new
m.director = Director.new

m.star.first_name = "Tim"
m.director.first_name = "Sara"

class Person
	attr_accessor :first_name, :last_name
end

m.star = Person.new(first_name: "Tim")
m.director = Person.new(first_name: "Avishek")

class Person
	def initialize hash
		first_name = hash[:first_name]
		last_name = hash[:last_name]
	end
end

def Book
	attr_accessor :title, :author
	def initialize hash
		title = hash[:title]
		author = hash[:author]
	end
end

b = Book.new(title: "West World", author: "Mustpha")

b1 = Book.new(title: "West World", author: Person.new())

def Book
	attr_accessor :like
	def initialize hash
		title = hash[:title]
		author = hash[:author]
		like = false
	end
end

b1.like = true
b1.liked_by = Person.new(first_name: "Jordan", last_name: "Pollack")

p2 = Person.new(first_name: "Jordan", last_name: "Pollack")
b1.like = true
b1.liked_by = p2
b1.liked_on = Time.now

class Movie
	attr_accessor :like
end










