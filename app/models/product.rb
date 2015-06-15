class Product < ActiveRecord::Base

  searchkick
  belongs_to :category
  has_many :companies
# papaerclip for smaller image
  has_attached_file :image, styles: { :medium => "300x239#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

# paperclip for larger image on hover
  has_attached_file :avatar, styles: {  :large => "800x800" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


end

