class Classification < ActiveRecord::Base
  has_and_belongs_to_many(:dictionaries)
end
