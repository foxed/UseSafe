class Comment < ActiveRecord::Base
  validates :user, presence: true
  validates :post, presence: true
  validates :body, presence: true

  belongs_to :user
  belongs_to :post

  def self.recent
    order(created_at: :desc)
  end
end
