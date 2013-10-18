class Paradigm < ActiveRecord::Base
  belongs_to(:word)

  attr_accessible(:word, :transcription, :translation)
end
