class Staff::VestController < Staff::Base
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
  def vest_params
    params.require(:vest).permit(:price, :size, :color, :pattern, :season, :scene, :description, :vest_name, :vest_code, :v_front, :v_back, :v_inner, :v_buckle, :v_other)
  end 
end
