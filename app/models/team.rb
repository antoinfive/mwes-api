class Team < ApplicationRecord
  belongs_to :owner, class_name: 'Account', foreign_key: :account_id
  has_many :players
end
