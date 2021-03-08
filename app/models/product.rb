class Product < ApplicationRecord
  # validates :image_url, presence: true
  # validates :id, numericality: true

  # def is_discounted
  #   price <= 10
  # end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

has_many :suppliers

end
