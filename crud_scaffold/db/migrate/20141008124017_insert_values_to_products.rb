class InsertValuesToProducts < ActiveRecord::Migration
  def change
    Product.create(name: "Baby Jumper AC Milan Home", price: 60000, category: "Baby Jumper", stock: 10)
    Product.create(name: "Baby Jumper Man. United Home", price: 60000, category: "Baby Jumper", stock: 20)
    Product.create(name: "Chelsea Blue Futsal Bag", price: 65000, category: "Futsal Bag", stock: 15)
    Product.create(name: "Juventus Black Futsal Bag", price: 65000, category: "Futsal Bag", stock: 8)
  end
end
