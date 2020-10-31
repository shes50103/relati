
# User.destroy_all
# Team.destroy_all

ApplicationRecord.transaction do

  %i(u1 u2 u3).each do |u|
    User.create(email: "#{u}@gmail.com")
  end

  %i(A B C).each do |name|
    Team.create(name: name)
  end

  UserTeam.create(user_id: 1, team_id: 1)
  UserTeam.create(user_id: 1, team_id: 2)
  UserTeam.create(user_id: 1, team_id: 3)
  UserTeam.create(user_id: 2, team_id: 1)
  UserTeam.create(user_id: 3, team_id: 1)

  %i(p1 p2).each do |title|
    Post.create(title: title, user_id: 1)
  end

  %i(p3).each do |title|
    Post.create(title: title, user_id: 2)
  end

  %i(c1 c2).each do |name|
    Comment.create(body: name, post_id: 1)
  end

  %i(c3).each do |name|
    Comment.create(body: name, post_id: 2)
  end
end










# u1 = User.find_by(email: 'u1@gmail.com')
# u2 = User.find_by(email: 'u2@gmail.com')
# u3 = User.find_by(email: 'u3@gmail.com')

# ta = Team.find_by(name: 'A')
# tb = Team.find_by(name: 'B')
# tc = Team.find_by(name: 'C')

# ut = UserTeam.first

# p1 = Post.find_by(title: 'p1')
# p2 = Post.find_by(title: 'p2')
# c1 = Comment.find_by(body: 'c1')
# c2 = Comment.find_by(body: 'c2')
# c3 = Comment.find_by(body: 'c3')


# # inverse_of
# ut = u1.user_teams.first
# ut.my_user.email == u1.email
# ut.my_user.email = 'xxx'
# ut.my_user.email == u1.email
