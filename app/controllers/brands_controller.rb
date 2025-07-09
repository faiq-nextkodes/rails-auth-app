class BrandsController < ApplicationController

  before_action :set_brand, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ edit update destroy create new show ]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @brand.update(brand_params)
        format.html { redirect_to @brand, notice: "Brand was successfully updated." }
        format.json { render :show, status: :ok, location: @brand }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @brand.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, status: :see_other, notice: "Brand was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def create
    @brand = Brand.new(brand_params)

    respond_to do |format|
      if @brand.save
        format.html { redirect_to @brand, notice: "Brand was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @brands = Brand.all
  end

  private

  def set_brand
    @brand = Brand.find(params.expect(:id))
  end

  def brand_params
    params.expect(brand: [ :brand_name, :id ])
  end

end
