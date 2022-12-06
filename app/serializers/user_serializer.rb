class UserSerializer < ActiveModel::Serializer
  attributes :username, :password 

  has_many :articles 
end
