class UserVote
  include Mongoid::Document
  field :question_id, type: String
  belongs_to :user
end
