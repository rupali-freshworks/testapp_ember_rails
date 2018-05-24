class ChangeNameUnitPrice < ActiveRecord::Migration
  def change
    rename_column :products, :unitPrice, :price
  end
end
