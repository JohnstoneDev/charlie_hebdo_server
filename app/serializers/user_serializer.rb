class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_confirmation

  has_many :articles 
end
