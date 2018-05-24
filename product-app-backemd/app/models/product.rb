class Product < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  # attr_accessible :name, :sku, :unitPrice
end
