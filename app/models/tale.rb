class Tale < ActiveRecord::Base
  belongs_to(:dictionary)
#  attr_accessible(:name, :tale)
#  has_many(:attachments, as: :attachable)
end
