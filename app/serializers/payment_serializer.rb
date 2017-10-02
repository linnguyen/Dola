class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :name, :fee, :created_at, :user_id
end
