class AddOutletToProducts < ActiveRecord::Migration
  def change
    add_column :products, :outlet, :string
  end
end
