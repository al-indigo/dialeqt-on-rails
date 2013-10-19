class Attribute < ActiveRecord::Base
  has_many(:words)
  has_many(:tales)
  has_and_belongs_to_many(:authors)
  belongs_to(:author)
  has_and_belongs_to_many(:classifications)
  attr_accessible(:name)
end
