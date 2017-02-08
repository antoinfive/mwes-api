# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_accounts
  10.times do 
    Account.create(username: Faker::Name.name,
                   email: Faker::Internet.safe_email)
  end
end

def create_teams
    id = 1 
  10.times do 
    Team.create(name: Faker::Hipster.word, owner: Account.find(id))
    id += 1
  end
end

def create_players(team_id)
  10.times do 
    Player.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, team: Team.find(team_id))
  end
end

puts 'creating accounts'
create_accounts

puts 'creating teams'
create_teams

team_id = 1 
puts "creating team"
while team_id < 11
  create_players(team_id)
  team_id += 1
end 

puts 'done'
