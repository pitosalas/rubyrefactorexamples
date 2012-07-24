class Person
	attr_accessor :first, :last, :like
	def initialize args
		@first = args[:first]
		@last = args[:last]
	end

	def likes(thing)
		thing.add_liker self
	end
end
