class Staff::SocksController < Staff::Base
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
  def socks_params
    params.require(:socks).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :sockes_name, :sockes_code, :sockes_one, :sockes_two, :sockes_three)
  end
end
