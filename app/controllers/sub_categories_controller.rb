class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]
  before_action :set_category

  layout 'dashboard_admin'

  def index
    @sub_categories = SubCategory.where( category_id: @category)
  end

  def show
  end

  def new
    @sub_category = SubCategory.new
  end

  def edit
  end

  def create
    @sub_category = SubCategory.new(sub_category_params)
    @sub_category.category = @category
    respond_to do |format|
      if @sub_category.save
        format.html { redirect_to [@category, @sub_category], notice: 'Sub category was successfully created.' }
        format.json { render :show, status: :created, location: @sub_category }
      else
        format.html { render :new }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sub_category.update(sub_category_params)
        format.html { redirect_to [@category, @sub_category], notice: 'Sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_category }
      else
        format.html { render :edit }
        format.json { render json: @sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sub_category.destroy
    respond_to do |format|
      format.html { redirect_to category_sub_categories_path(@category), notice: 'Sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end

  private
    def set_sub_category
      @sub_category = SubCategory.find(params[:id])
    end

    def sub_category_params
      params.require(:sub_category).permit(:name, :photo_sub_category, :description, :category_id, :photo_sub_category_cache)
    end
end
