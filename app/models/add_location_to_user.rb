class AddLocationToUser
  include Mongoid::Document
  field :location, type: String
end
