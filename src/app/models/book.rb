class Book < ApplicationRecord
  belongs_to :author
  # has_one :publisher, optional: true
  has_one_attached :image

  def get_citation
    # Last, First M. Book. City: Publisher, Year Published. Print.
   "#{self.author_name}"
   #"#{@book.author.name}. #{@book.title}. #{@book.publisher}, #{@book.year}. #{@book.format}."
  end

  def author_name
    author = self.author
    "#{author.last_name}, #{author.first_name} #{author.middle_name}"
  end

end
