class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  before_initialize :default_values

  field :name, type: String
  field :vote_type, type: String
  field :flag, type: Boolean

  belongs_to :group

  private
  def default_values
    self.vote_type = 'SimpleVote'
  end
end
