class User < ApplicationRecord
    
    has_many :commits
    has_many :projects, through: :commits
    has_many :projects_created, class_name: "Project", foreign_key: "creator_id"


    accepts_nested_attributes_for :projects_created
    # accepts_nested_attributes_for :projects

end
