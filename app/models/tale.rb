class Tale < ActiveRecord::Base
  belongs_to(:attribute)
  attr_accessible(:name, :tale)
  has_many(:attachments, as: :attachable)
end
