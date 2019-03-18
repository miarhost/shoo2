module Api::V1
  class MessageSerializer < ActiveModel::Serializer
    attributes :id, :email, :first_name, :last_name, :amount
  end
end
