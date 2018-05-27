class Admin::CategoriesController < ApplicationController

  before_action :authenticate

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Categories created!'
    else
      render :new
    end
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.configuration.admin[:admin_username] && password == Rails.configuration.admin[:admin_password]
    end
  end

  def category_params
    params.require(:category).permit(
      :name
    )
  end

end
