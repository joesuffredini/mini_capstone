# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create({name:"Golf Shoes", price: 125, image_url:"https://i.ebayimg.com/thumbs/images/g/eOAAAOSw6V1fLr5u/s-l200.jpg", description: "Comfort shoes"})
Product.create({name:"Golf shirts", price: 50, image_url:"https://cdn.shopify.com/s/files/1/1366/9275/products/ReauxbackFront_720x.png?v=1613065447", description: "Dri-fit"})
Product.create({name:"Golf pants", price: 80, image_url:"https://bonobos-prod-s3.imgix.net/products/190306/original/PANT_ACTIVE-PANT_17896-BK163_3_hover.jpg?1594929954=&auto=format%2Ccompress&q=75&fit=clip&cs=srgb&ixlib=react-8.6.1&w=450&dpr=1", description: "Relaxed fit, dri-fit"})
