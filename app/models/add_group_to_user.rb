class AddGroupToUser
  include Mongoid::Document
  field :group, type: Reference
  field :timestamp, type: String
end
