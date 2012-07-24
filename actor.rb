require_relative 'likable'
class Actor
	include Likable

	attr_accessor :type

	def initialize args
		@person = args[:person]
		@type = :general
	end

	def person
		@person
	end
	def first
		@person.first
	end

	def last
		@person.last
	end

end
