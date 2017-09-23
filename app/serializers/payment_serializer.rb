class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :name, :fee
  has_one :user
end
