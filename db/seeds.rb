# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 3,
  name: "Tuan Tran",
  email: "Tuan@gmail.com",
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
                    {
                   name: "Banner",
                   unit: "1",
                   category_id: "1",
                   price: "250",
                   image: Rails.root.join("app/assets/images/banner.png").open,
                    }])