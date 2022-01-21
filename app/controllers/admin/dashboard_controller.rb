class Admin::DashboardController < ApplicationController
  def show
    @products_number = Product.all.count 
    @categories_number = Category.all.count
  end
end
