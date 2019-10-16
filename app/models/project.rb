class Project < ApplicationRecord
    belongs_to :creator, class_name: "User", optional: true

    has_many :commits
    has_many :users, through: :commits
end
