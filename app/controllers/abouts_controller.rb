class AboutsController < ApplicationController

  def show
    @product = Product.find_by(name: 'Optimal Sleeping Bed')
  end
  
end
