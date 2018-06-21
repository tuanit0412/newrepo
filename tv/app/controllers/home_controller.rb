class HomeController < ApplicationController
  def index
    @products = Product.where("price = 100").all.paginate(page: params[:page], per_page: 5)
    if params[:query].present?
      @products = Product.where("price = 1000").search(params[:query]).paginate(page: params[:page], per_page: 15)
    else
      @products = Product.where("price = 1000").all.paginate(page: params[:page], per_page: 15)
    end
  end

  skip_before_action :authorize
end
