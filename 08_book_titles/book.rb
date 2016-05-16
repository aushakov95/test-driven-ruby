class Book
 attr_accessor :title

  def title=(title)
    @title = title.capitalize
  end

end
