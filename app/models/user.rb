class User < ApplicationRecord
  has_many :user_teams
  has_many :teams, through: :user_teams

  has_many :posts
  has_many :comments, through: :posts

  # has_many :user_teams, inverse_of: :my_user
end
