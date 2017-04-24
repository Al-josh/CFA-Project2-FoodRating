class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  ratyrate_rateable "healthy"
  has_attached_file :image, styles: {large: "400x400#", medium: "300x300#", thumb: "100x100#"}, :storage => :cloudinary, :path => ":id/:style/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def slug_candidates
    [
      :title,
    ]
  end

end
