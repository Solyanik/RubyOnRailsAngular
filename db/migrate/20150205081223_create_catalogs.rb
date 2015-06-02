class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.string :name
      t.text :description
      t.float :price
      
      t.timestamps
    end
  end
end
