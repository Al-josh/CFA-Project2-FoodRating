class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews
  ratyrate_rateable "healthy"
  has_attached_file :image, styles: {large: "500x500#", medium: "300x300#", thumb: "100x100#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
