class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :price
  #missing sweet.name

  has_one :sweet
  has_one :vendor
end
