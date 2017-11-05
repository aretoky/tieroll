class Staff::ShoesController < Staff::Base
  before_action :are_you_staff_member?, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def confirm
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def shoes_params
    params.require(:shoes).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :shoes_name, :shoes_code, :shoes_one, :shoes_two, :shoes_three, :shoes_four, :shoes_five)
  end
end
