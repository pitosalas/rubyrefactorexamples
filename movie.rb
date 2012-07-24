class Movie
	attr_accessor :title, :director, :star
	def initialize args
		@title = args[:title]
		@like_list = []
	end

	def add_liker the_liker
		@like_list << the_liker
	end

	def like?
		!@like_list.empty?
	end

end

