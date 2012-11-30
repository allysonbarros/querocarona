class Ride
  include Mongoid::Document
  field :initial, type: String
  field :destination, type: String
  field :created_at, type: Time , default: Time.now

  belongs_to :driver, class_name: "User"
  belongs_to :requestor, class_name: "User"

end
