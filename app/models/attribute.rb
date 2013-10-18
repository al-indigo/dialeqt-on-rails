class Attribute < ActiveRecord::Base
  has_many(:words)
  has_many(:tales)

  attr_accessible(:name)
end
