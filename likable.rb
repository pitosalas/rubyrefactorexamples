module Likable

  def like?
    puts "like_list #{@like_list}"
    !like_list.empty?
  end

  def is_liked_by? liker
    like_list.include? liker
  end

  def like_list
    @like_list ||= []
  end

  def add_liker liker
    like_list << liker
  end

  def likers_as_array_of_strings
    like_list.map { |x| x.name }
  end


end
