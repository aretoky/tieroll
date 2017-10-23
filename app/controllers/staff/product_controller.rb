class StaffMember::ProductController < ApplicationController
  include Staff::ProductHelper
  before_action :set_staff, only: [:new, :create, :confirm, :edit, :update, :destroy]

  def new
    # @product = Product.new
    # @photo = Photo.new
  end

  def confirm
  end

  def create
    @product =
    if params[:back]
      render :new
    elsif
      @product.save
      redirect_to :staff_root, notice: "商品の登録が完了したよ"
    else
      render :new, alert: "入力した項目に誤りがあるよ"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  # def product_params
  #   params.require(:product).permit(:staff_member, :photo, :color, :pattern, :season, :scene, :size, :product_name, :description, :price)
  # end

end
