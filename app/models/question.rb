class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  QUESTION_TYPE = ['SimpleVote', 'MultipleChoice']

  field :name,          type: String
  field :question_text, type: String
  field :vote_type,     type: String, default: QUESTION_TYPE.first
  field :flag,          type: Boolean, default: false

  belongs_to :group

  validates_presence_of :name, :vote_type
  embeds_many :answers

  private

end
