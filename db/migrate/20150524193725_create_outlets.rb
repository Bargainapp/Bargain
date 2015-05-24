class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :outlet
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
