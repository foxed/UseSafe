class Post < ActiveRecord::Base
  validates :user, presence: true
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :comments
end
