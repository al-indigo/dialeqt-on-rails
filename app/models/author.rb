class Author < ActiveRecord::Base
  has_and_belongs_to_many(:dictionaries)
  has_many(:dictionaries)

  def available_authors
    authors.select
  end
end
