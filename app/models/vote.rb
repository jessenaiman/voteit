class Vote
  include Mongoid::Document
  embedded_in :question
end
