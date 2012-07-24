class Movie

	include Likable

	attr_accessor :title, :director, :star

	def initialize args
		@title = args[:title]
	end
end

