class AddDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :desription, :text
  end
end
