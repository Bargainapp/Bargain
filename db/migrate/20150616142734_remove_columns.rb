class RemoveColumns < ActiveRecord::Migration
  def self.up
  remove_column :products, :price
  remove_column :categories, :price
  remove_column :companies, :price
end
end
