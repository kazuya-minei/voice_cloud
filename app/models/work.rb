class Work < ApplicationRecord
  belongs_to :user 
  has_many :voices, dependent: :destroy 
  has_many :workLikes, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence:true
  validates :title, presence: true, length: { maximum: 12 }
  validates :content, presence: true, length: { maximum: 1000 }
end
