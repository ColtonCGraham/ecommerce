# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)\

require 'csv'

# Category.destroy_all

csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)

products = CSV.parse(csv_data, headers: true)

csv_file2 = Rails.root.join('db/products2.csv')
csv_data2 = File.read(csv_file2)

productsNoPics = CSV.parse(csv_data2, headers: true)

# Account.delete_all
AdminUser.delete_all
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
end

products.each do |product|
  cat = Category.find_or_create_by(name: product['Category'])
  p = Product.create!(name: product['Name'],
                      basePrice: product['Price'],
                      description: "#{product['Description']}.")
  p.categories << cat
  p.image.attach(io: File.open("#{Rails.root}/app/assets/images/#{cat.name}.png"), filename: '123.png')
end

productsNoPics.each do |product|
  cat = Category.find_or_create_by(name: product['Category'])
  p = Product.create!(name: product['Name'],
                      basePrice: product['Price'],
                      description: "#{product['Description']}.")
  p.categories << cat
end
