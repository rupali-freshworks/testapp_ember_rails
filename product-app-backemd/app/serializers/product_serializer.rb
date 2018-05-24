class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :sku, :price
end
