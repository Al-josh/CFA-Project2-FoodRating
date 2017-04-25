class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :meals
  has_attached_file :image, styles: {large: "400x400#", restolarge: "290x290#", medium: "200x200#", thumb: "100x100#"}, :storage => :cloudinary, :path => ":id/:style/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  # def google_map(center)
  # "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17&key=ENV["GOOGLE_API"]"
  # end

end
