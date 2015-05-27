class AddOutletToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :outlet, :string
  end
end
