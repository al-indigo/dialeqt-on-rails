class Tale < ActiveRecord::Base
  belongs_to(:attribute)
  attr_accessible(:name, :tale)
end
