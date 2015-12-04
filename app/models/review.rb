class Review < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  validates :chef_id, presence: true
  validates :body, presence: true, length: { minimum: 10, maximum: 500 }
  mount_uploader :picture, PictureUploader

end
