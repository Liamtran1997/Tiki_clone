# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 3,
  name: "Liam Tran",
  email: "Rosan0011@gmail.com",
  password: "123123",
  password_confirmation: "123123",
  admin: true
)
user.save!

Product.create!([{
                      name: "Jumbo",
                      unit: "1",
                      category_id: "1",
                      price: "250",
                      image: Rails.root.join("app/assets/images/Jumbo.jpg").open,
                    },
                    {
                      name: "bambor",
                      unit: "1",
                      category_id: "1",
                      price: "250",
                      image: Rails.root.join("app/assets/images/bambor.jpeg").open,
                    },
                    {
                   name: "T_shirt",
                   unit: "1",
                   category_id: "1",
                   price: "250",
                   image: Rails.root.join("app/assets/images/shirt.jpg").open,
                    },
                    {
                   name: "Logo Tee",
                   unit: "1",
                   category_id: "1",
                   price: "250",
                   image: Rails.root.join("app/assets/images/T-shirt.jpg").open,
                    },
                    {
                   name: "Visvim",
                   unit: "1",
                   category_id: "1",
                   price: "250",
                   image: Rails.root.join("app/assets/images/visvim.jpeg").open,
                    },
                 # {
                 #   name: "Champion Zip",
                 #   unit: "1",
                 #   category_id: "1",
                 #   price: "450",
                 #   image: Rails.root.join("app/assets/images/championzip.webp").open,
                 # },
                 # {
                 #   name: "Coggi Shirt",
                 #   unit: "1",
                 #   category_id: "1",
                 #   price: "350",
                 #   image: Rails.root.join("app/assets/images/coggi.webp").open,
                 # },
                 # {
                 #   name: "Daccing Ring",
                 #   unit: "1",
                 #   category_id: 3,
                 #   price: "50",
                 #   image: Rails.root.join("app/assets/images/dancingring.webp").open,
                 # },
                 # {
                 #   name: "Moncler Jacket",
                 #   unit: "1",
                 #   category_id: "2",
                 #   price: "650",
                 #   image: Rails.root.join("app/assets/images/moncler.webp").open,
                 # },
                 # {
                 #   name: "The North Face Jacket",
                 #   unit: "1",
                 #   category_id: "2",
                 #   price: "450",
                 #   image: Rails.root.join("app/assets/images/northface.webp").open,
                 # },
                 # {
                 #   name: "The North Face Pink Jacket",
                 #   unit: "1",
                 #   category_id: "2",
                 #   price: "420",
                 #   image: Rails.root.join("app/assets/images/pinknorth.webp").open,
                 # },
                 # {
                 #   name: "The North Face Red Jacket",
                 #   unit: "1",
                 #   category_id: "2",
                 #   price: "430",
                 #   image: Rails.root.join("app/assets/images/rednorth.webp").open,
                 # },
                 # {
                 #   name: "Polo Blue",
                 #   unit: "1",
                 #   category_id: "1",
                 #   price: "230",
                 #   image: Rails.root.join("app/assets/images/polobl.webp").open,
                 # },
                 # {
                 #   name: "Tommy Shirt",
                 #   unit: "1",
                 #   category_id: "1",
                 #   price: "150",
                 #   image: Rails.root.join("app/assets/images/tommyshirt.webp").open,
                 # },
                 # {
                 #   name: "YSL Polo Shirt",
                 #   unit: "1",
                 #   category_id: "1",
                 #   price: "250",
                 #   image: Rails.root.join("app/assets/images/yslpolo.webp").open,
                 # },
                    {
                   name: "Banner",
                   unit: "1",
                   category_id: "1",
                   price: "250",
                   image: Rails.root.join("app/assets/images/banner.png").open,
                    }])