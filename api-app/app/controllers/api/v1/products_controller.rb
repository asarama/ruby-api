class Api::V1::ProductsController < ApplicationController

  # return all products
  def index
    products = Product.all
    render json: products, status: 200
  end

  # return a specific product by id
  def show

    id = params[:id]

    product = Product.find_by(id: id)
    
    if product
      render json: product, status: 200
    else
      render json: {error: "Product with id #{id} not found!"}
    end
  end

  # Add a new product entry to db and return the product
  def create

    product = Product.new(
      name: prod_params[:name],
      brand: prod_params[:brand],
      price: prod_params[:price],
      description: prod_params[:description]
    )

    if product.save
      render json: product, status: 200
    else
      render json: {error: "Could not create product!"}
    end
  end

  private
    # Action controller parameter
    def prod_params
      # require https://api.rubyonrails.org/classes/ActionController/Parameters.html#method-i-require
      # permit https://api.rubyonrails.org/classes/ActionController/Parameters.html#method-i-permit
      params.require(:product).permit([
        :name,
        :brand,
        :price,
        :description
      ])
    end
end
