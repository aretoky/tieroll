module MarchandiseEdit
  extend ActiveSupport::Concern

  def set_items_photos
    @shurt = Shurt.where(staff_member: @current_staff.id, id: @code.shurt).select(:s_front)
    @hat = Hat.where(staff_member: @current_staff.id, id: @code.hat).select(:hat_front)
  end
end
