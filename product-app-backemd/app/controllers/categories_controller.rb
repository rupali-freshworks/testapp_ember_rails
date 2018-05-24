class CategoriesController < ApplicationController
  def index
    render json: Category.all
  end

  def create
    @category = Category.new(category_params)
    @category.save
    render json: @category
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    render json: @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render json: @category
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
