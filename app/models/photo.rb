class Photo < ApplicationRecord
    mount_uploader :file, PictureUploader
    has_many :comments
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    belongs_to :user
    delegate :email, :to => :user, :prefix => true
    validates :title, length: { minimum: 5 }
    validates :title, length: { maximum: 30 }
    validates :description, length: { maximum: 200 }
end
