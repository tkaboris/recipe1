class Review < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  validates :chef_id, presence: true
  validates :body, presence: true, length: { minimum: 20, maximum: 500 }

end