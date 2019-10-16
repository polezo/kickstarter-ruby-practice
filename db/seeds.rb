
User.destroy_all
Commit.destroy_all
Project.destroy_all

user1 = User.create(name: "Adam")
user2 = User.create(name: "Kailey")

pr1 = Project.create(title: "one project", creator: user1, goal: 1000)
pr2 = Project.create(title: "another project", creator: user2, goal: 25000)
pr3 = Project.create(title: "shoes", creator: user1, goal: 50000)

Commit.create(user: user1, project: pr2)
Commit.create(user: user1, project: pr1)
Commit.create(user: user1, project: pr3)

Commit.create(user: user2, project: pr1)
Commit.create(user: user2, project: pr2)
Commit.create(user: user2, project: pr3)

