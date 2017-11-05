class Staff::PocketChiefController < Staff::Base
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
  def chief_params
    params.require(:pocket_chief).permit(:price, :size, :color, :pattern, :season, :scene, :description, :raw_materials, :chief_name, :chief_code, :chief_one, :chief_two, :chief_three)
  end
end
