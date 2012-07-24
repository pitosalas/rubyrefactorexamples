require_relative 'person'
require_relative 'likable'

class Actor
  include Likable

  def initialize args
    @pers = Person.new(args)
    @like_list = []
  end

  def is_liked_by? liker
    @like_list.include? liker
  end

  def first
    @pers.first
  end

  def last
    @pers.last
  end


  def add_liker liker
    @like_list << liker
  end

  def likers_as_array_of_strings
    @like_list.map { |x| x.name }
  end

  def like?
    !@like_list.empty?
  end
end
