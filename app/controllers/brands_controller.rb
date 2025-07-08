class BrandsController < ApplicationController

  before_action :authenticate_user!, only: %i[ edit update destroy create new show ]
  before_action :set_brand, only: %i[ new index ]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
    @brands = Brand.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        format.html { redirect_to @brand, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private

  def set_brand
    @brand = Brand.where(params[:brands_id])
  end

  def brand_params
    params.require(:brand).permit(:brand_name)
  end

end
