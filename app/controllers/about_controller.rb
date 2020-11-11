class AboutController < ApplicationController

  def index
    @product = Product.find_by(name: 'Optimal Sleeping Bed')
  end
  
end
