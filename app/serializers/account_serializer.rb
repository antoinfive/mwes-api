class AccountSerializer < ActiveModel::Serializer
  attributes :id, :username, :team_name

  def team_name 
    object.team.name
  end 
end
