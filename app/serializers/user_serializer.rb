class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :auth_token

  # has_many :payments
end
