class Staff::TieController < Staff::Base
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
  def tie_params
    params.require(:tie).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :tie_name, :tie_code, :tie_one, :tie_two, :tie_three)
  end
end
