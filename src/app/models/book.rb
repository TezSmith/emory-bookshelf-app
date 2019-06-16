class Book < ApplicationRecord
  belongs_to :author
  has_one :publisher
  accepts_nested_attributes_for :publisher
  has_one_attached :image

  def get_citation
    # Last, First M. Book. City: Publisher, Year Published. Print.
   "#{self.author_name}. #{self.title}. #{self.publisher_company}."
  end

  def author_name
    author = self.author
    "#{author.last_name}, #{author.first_name} #{author.middle_name}".strip
  end

  def publisher_company
    company = self.publisher
    "#{company.city}: #{company.name}, #{company.year}. #{company.format}"
  end

end
