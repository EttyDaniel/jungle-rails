require 'rails_helper'
RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "validates: name, presence:true" do
      @category = Category.new(:name => "catName")
      @product = Product.new(:name => "myProduct", :price => 200, :quantity => 100, :category => @category)
      expect(@product.save).to be(true)
    end
  end
end
=begin
RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should save the product' do
      @category = Category.new(:name => "xyz")
      @product = Product.new(:name => "Abc", :price => 20, :quantity => 10, :category => @category)
      @product.save
      expect(@product.save).to be true
    end
    it 'should have a name' do
      @category = Category.new(:name => "XYZ")
      @product = Product.new(:name => "abc", :price => 10, :quantity => 5, :category => @category)
      @product.save
      expect(@product.name).to be_present
    end
    it 'should have a price' do
      @category = Category.new(:name => "XYZ")
      @product = Product.new(:name => "abc", :price => 10, :quantity => 5, :category => @category)
      @product.save
      expect(@product.price).to be_present
    end
    it 'should have a quantity' do
      @category = Category.new(:name => "XYZ")
      @product = Product.new(:name => "abc", :price => 10, :quantity => 5, :category => @category)
      @product.save
      expect(@product.quantity).to be_present
    end
    it 'should have a category' do
      @category = Category.new(:name => "XYZ")
      @product = Product.new(:name => "abc", :price => 10, :quantity => 5, :category => @category)
      @product.save
      expect(@product.category).to be_present
    end
  end
end
=end