class Staff::ItemController < Staff::Base
  before_action :are_you_staff_member?
  def item_post
  end

  def item_edit
  end
end
