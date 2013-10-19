class Word < ActiveRecord::Base
  belongs_to(:attribute)
  has_many(:paradigms)
  has_many(:attachments, as: :attachable)
  attr_accessible(:word, :transcription, :translation, :tag)
end
