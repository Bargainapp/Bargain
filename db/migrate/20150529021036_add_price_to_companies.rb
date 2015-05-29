class AddPriceToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :price, :double
  end
end
