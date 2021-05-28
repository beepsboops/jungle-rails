class Admin::DashboardController < ApplicationController
  def show
    @product_count = Product.count
    @category_count = Product.distinct.count('category_id')
  end
end
