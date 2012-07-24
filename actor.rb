class Actor
	attr_accessor :type

	def initialize args
		@person = args[:person]
		@like_list = []
		@type = :general
	end

	def first
		@person.first
	end

	def last
		@person.last
	end

	def is_liked_by? liker
		@like_list.include? liker
	end

	def add_liker liker
		@like_list << liker
	end

	def like?
		!@like_list.empty?
	end
end
