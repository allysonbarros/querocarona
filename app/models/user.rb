class User
  include Mongoid::Document
  field :name, type: String
  field :username, type: String
  field :email, type: String

  has_one :ride, inverse_of: :driver
  has_one :ride, inverse_of: :requestor

end
