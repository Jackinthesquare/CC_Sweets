class Sweet < ApplicationRecord
    has_many :vendor_sweets
    has_many :vendors, through: :vendor_sweets

    validates :price, presence: true, numericality: { greater_than: 0 }
end
