class Staff::Base < ApplicationController
  helper_method :current_staff

  def staff_login staff
    session[:staff_id] = staff.id
  end

  def staff_logout
    session[:staff_id] = nil
  end

  def current_staff
    @current_staff ||= StaffMember.find_by(id: session[:staff_id])
  end
  #
  # def are_you_staff?
  #   if current_staff.nil?
  #     redirect_to :staff_login
  #   end
  # end

  def are_you_staff_member?
    if session[:staff_id]
      @current_staff = StaffMember.find_by(id: session[:staff_id])
    else
      redirect_to :staff_login
    end
  end

  def set_label
    @season = Season.pluck(:product_season, :id)
    @scene = Scene.pluck(:product_scene, :id)
    @size = Size.pluck(:product_size, :id)
    @color = Color.pluck(:product_color, :id)
    @pattern = Pattern.pluck(:product_pattern, :id)
  end
end
