class Category < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
end
