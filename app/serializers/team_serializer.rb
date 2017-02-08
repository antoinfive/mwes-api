class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :players 
  has_one :account
end
