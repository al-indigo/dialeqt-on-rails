class WordPraat < ActiveRecord::Base
  has_attached_file(:markup)
  has_attached_file(:sound)
  belongs_to(:word)
end
