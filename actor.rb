class Actor
	attr_accessor :first, :last
	def initialize args
		@first = args[:first]
		@last = args[:last]
		@like_list = []
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
