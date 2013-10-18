class Word < ActiveRecord::Base
  belongs_to(:attribute)
  has_many(:paradigms)

  attr_accessible(:word, :transcription, :translation, :tag)
end
