class UserVote
  include Mongoid::Document
  field :question_id, type: Integer
  embedded_in :user
end
