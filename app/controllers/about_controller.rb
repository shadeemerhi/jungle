class AboutController < ApplicationController

  def index
    @product = Product.where(name: 'Optimal Sleeping Bed')
    puts @product.inspect
  end
  
end
