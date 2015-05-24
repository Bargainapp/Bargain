class AddAttachmentImageToOutlets < ActiveRecord::Migration
  def self.up
    change_table :outlets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :outlets, :image
  end
end
