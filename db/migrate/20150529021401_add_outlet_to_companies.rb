class AddOutletToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :outelt, :string
  end
end
