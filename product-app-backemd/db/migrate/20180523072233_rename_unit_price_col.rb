class RenameUnitPriceCol < ActiveRecord::Migration
  def change
    rename_column :products, :unitPrice, :unit_price
  end
end
