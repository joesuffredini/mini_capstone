class Supplier < ApplicationRecord
belongs_to :products

# def products
#   Product.where(supplier_id: id)

# end
end
