class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def add
    "Book added successfully!"
  end
  
  def to_s
    "#{@title} by #{@author}"
  end
end
