class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.js {render layout: false}
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:succes] = "Product successfully created."
      redirect_to '/'
    else
      flash[:danger] = "Product not created. Please check form."
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:success] = "Product successfully updated"
      redirect_to products_path
    else
      flash[:danger] = "Product not updated."
      redirect_to edit_product_path(@product)
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
    flash[:succes] = "Product has been removed."
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
