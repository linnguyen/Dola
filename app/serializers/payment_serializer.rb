class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :name, :fee, :created_at
  has_one :user
end
