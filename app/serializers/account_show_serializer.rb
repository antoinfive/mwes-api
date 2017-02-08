class AccountShowSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_one :team
end
