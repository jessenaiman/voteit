class Group
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :hashtag, type: String
  field :description, type: String
  field :privacy, type: String
  has_and_belongs_to_many :users

  validates_presence_of :title, :privacy
end
