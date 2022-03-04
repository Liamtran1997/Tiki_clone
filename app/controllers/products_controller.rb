class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:show, :index]

  impressionist actions: [:show, :index], unique: [:impressionable_type, :impressionable_id, :session_hash]


  # GET /products or /products.json
  def index
    @products = Product.all.order('created_at desc').paginate(page: params[:page], per_page: 5
    )
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    is_admin?
    @product = current_user.product.build
  end

  # GET /products/1/edit
  def edit
    is_admin?
  end

  # POST /products or /products.json
  def create
    is_admin?
    @product  = current_user.product.build(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
      is_admin?
      @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:category_id, :name, :price, :unit, :image)
    end

    def is_admin?
      redirect_to root_path, alert:"Not authorized" if current_user.try(:admin) == false
    end


end
