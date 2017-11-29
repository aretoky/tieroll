module MarchandiseEdit
  extend ActiveSupport::Concern

  def set_items_photos
    @shurt = Shurt.where(staff_member: @current_staff.id, id: @marchandise.shurt_id).pluck(:s_front)
  end
end 
