class Author < ActiveRecord::Base
  has_and_belongs_to_many(:attributes)
  has_many(:attributes)
end
