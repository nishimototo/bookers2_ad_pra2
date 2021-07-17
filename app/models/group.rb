class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :introduction, presence: true
  attachment :image

  has_many :group_users
  has_many :users, through: :group_users
end
