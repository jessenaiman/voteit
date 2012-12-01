class Group
  include Mongoid::Document
  field :title, type: String
  field :hashtag, type: String
  field :description, type: String
  field :privacy, type: String
  embedded_in :user
end
