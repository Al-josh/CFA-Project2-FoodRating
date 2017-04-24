class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :comments
  has_attached_file :image, styles: {large: "300x300#", medium: "200x200#", thumb: "100x100#"}, :storage => :cloudinary, :path => ":id/:style/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  ratyrate_rateable "healthy"

end
