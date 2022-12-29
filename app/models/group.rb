class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, through: :user_groups
    has_many :posts

    validates :name, presence: true

end
