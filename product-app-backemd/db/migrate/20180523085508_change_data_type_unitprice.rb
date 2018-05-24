class ChangeDataTypeUnitprice < ActiveRecord::Migration
  def change
    rename_column :products, :unit_price, :unitPrice
    change_column :products, :unitPrice, :decimal
  end
end
