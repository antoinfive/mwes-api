class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name
  has_one :team
end
