class Paradigm < ActiveRecord::Base
  belongs_to(:word)
  has_many(:attachments, as: :attachable)

  attr_accessible(:word, :transcription, :translation)
end
