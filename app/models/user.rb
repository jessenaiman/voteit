class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :provider, type: String
  field :uid, type: String
  field :name, type: String
  field :email, type: String
  field :location, type: String
  attr_accessible :provider, :uid, :name, :email
  # run 'rake db:mongoid:create_indexes' to create indexes
  index({ email: 1 }, { unique: true, background: true })
  has_and_belongs_to_many :groups

  validates_presence_of :name

  has_and_belongs_to_many :user_votes

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

end
