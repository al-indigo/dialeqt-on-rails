class Word < ActiveRecord::Base
  belongs_to(:attribute)
  has_many(:paradigms)
  has_many(:attachments, as: :attachable)
  has_many(:praats, as: :praatable)
#  attr_accessible(:word, :transcription, :translation, :tag)
end
