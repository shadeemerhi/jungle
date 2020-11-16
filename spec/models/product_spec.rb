require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      @category = Category.create(name: "Shoes")
      @product = @category.products.create(name: "Nike Roches", description: 'test', image: 'test', price_cents: 30000, quantity: 20)
      expect(@product).to be_valid
      @product.errors.full_messages
    end

    it "checks for a valid name" do
      @category = Category.create(name: "Shoes")
      @product = @category.products.create(name: nil, description: 'test', image: 'test', price_cents: 30000, quantity: 20)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "checks for a valid price" do
      @category = Category.create(name: "Shoes")
      @product = @category.products.create(name: 'Nike Roches', description: 'test', image: 'test', price_cents: nil, quantity: 20)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "checks for a valid quantity" do
      @category = Category.create(name: "Shoes")
      @product = @category.products.create(name: 'Nike Roches', description: 'test', image: 'test', price_cents: 30000, quantity: nil)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "checks for a valid category" do
      @category = Category.create(name: "Shoes")
      @product = Product.create(name: 'Nike Roches', description: 'test', image: 'test', price_cents: nil, quantity: 20)
      expect(@product).to be_invalid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end
end
