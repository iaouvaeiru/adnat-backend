class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address, :password_digest
  has_one :organisation
end
