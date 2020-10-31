class UserTeam < ApplicationRecord
  belongs_to :user
  belongs_to :team

  belongs_to :my_user, foreign_key: :user_id, class_name: "User"
end
