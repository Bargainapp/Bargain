class Outlet < ActiveRecord::Base
  searchkick
  belongs_to :company

  has_attached_file :image, styles: { :medium => "300x300#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
