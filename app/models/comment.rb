class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  validates :content, length: { maximum: 200 }
  validates :content, length: { minimum: 3 }
end
