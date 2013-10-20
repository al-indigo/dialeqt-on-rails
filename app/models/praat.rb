class Praat < ActiveRecord::Base
  belongs_to :praatable, polymorphic: true
  has_attached_file(:sound)
  has_attached_file(:markup)
end
