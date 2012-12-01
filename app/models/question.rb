class Question
  include Mongoid::Document
  field :name, type: String
  field :vote_type, type: String
  field :flag, type: Boolean
end
