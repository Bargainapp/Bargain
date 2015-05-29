class Company < ActiveRecord::Base
  searchkick
  belongs_to :product
  has_many :outlets

  has_attached_file :image, styles: { :medium => "300x239#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
