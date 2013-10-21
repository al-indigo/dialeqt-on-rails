class ParadigmSound < ActiveRecord::Base
  has_attached_file(:sound)
  belongs_to(:paradigm)
end
