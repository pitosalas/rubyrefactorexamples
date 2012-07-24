class Movie
	attr_accessor :title, :director, :star

	def initialize args
		@title = args[:title]
		@director = args[:director]
		@star = args[:star]
		@like_list = []
	end

	def director_first
		@director.first
	end

	def director= person
		@director = person
	end

	def star_first
		@star.first
	end

	def star= person
		@star = person
	end

	def add_liker the_liker
		@like_list << the_liker
	end

	def like?
		!@like_list.empty?
	end

end

