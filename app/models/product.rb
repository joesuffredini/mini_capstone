class Product < ApplicationRecord
  # validates :image_url, presence: true
  # validates :id, numericality: true

  # def is_discounted
  #   price <= 10
  # end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
    #   Image.where(product_id: id)
    # end

belongs_to :supplier
has_many :images
has_many: orders
 
end
