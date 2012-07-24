require_relative 'person'
require_relative 'likable'

class Actor
	include Likable

	def initialize args
		@pers = Person.new(args)
	end

	def first
		@pers.first
	end

	def last
		@pers.last
	end
end
