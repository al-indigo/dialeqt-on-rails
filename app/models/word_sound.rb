class WordSound < ActiveRecord::Base
  has_attached_file(:sound)
  belongs_to(:word)
end
