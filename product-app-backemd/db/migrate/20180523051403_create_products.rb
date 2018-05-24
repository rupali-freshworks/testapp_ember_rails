class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :unitPrice

      t.timestamps
    end
  end
end
