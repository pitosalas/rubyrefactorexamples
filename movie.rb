require_relative 'likable'

class Movie
	include Likable
	attr_accessor :title, :director, :star

	def initialize args
		@title = args[:title]
		@director = args[:director]
		@star = args[:star]
	end

end

