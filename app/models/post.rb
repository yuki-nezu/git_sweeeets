class Post < ApplicationRecord
  has_one_attached :image
  # mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

end
