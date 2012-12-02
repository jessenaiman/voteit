class Vote
  include Mongoid::Document
  embedded_in :question
  field :answer, type: String
end
