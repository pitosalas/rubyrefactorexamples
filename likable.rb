module Likable

  def is_liked_by? liker
      like_list.include? liker
  end

  def add_liker liker
    like_list << liker
  end

  def like?
    !like_list.empty?
  end

  def like_list
    @like_list = @like_list || []
  end

end
