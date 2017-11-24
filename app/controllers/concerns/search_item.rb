module SearchItem
  extend ActiveSupport::Concern

  # シャツ、パンツ、靴下、靴は必ず存在する
  def set_primary_items
    @shurt = Shurt.where(staff_member: @current_staff.id, code: params[:marchandise][:shurt_code]).pluck(:id, :price, :s_front)
    @pant = Pant.where(staff_member: @current_staff.id, code: params[:marchandise][:pant_code]).pluck(:id, :price, :p_side)
    @socks = Sock.where(staff_member: @current_staff.id, code: params[:marchandise][:sock_code]).pluck(:id, :price, :socks_one)
    @shoes = Shoe.where(staff_member: @current_staff.id, code: params[:marchandise][:shoe_code]).pluck(:id, :price, :shoe_front)
  end

  # 入力があれば引っ張ってくる
  # 全てにおいてインスタンス = whereで現在のスタッフ且つ該当CODEを持つもの.pluck(:id, :price, )　if marchandiseにアイテムがあれば　の形
  def set_items
    @hat = Hat.where(staff_member: @current_staff.id, code: params[:marchandise][:hat_code]).pluck(:id, :price, :hat_front) if params[:marchandise][:hat_code]

    @ear_muffler = EarMuffler.where(staff_member: @current_staff.id, code: params[:marchandise][:ear_muffler_code]).pluck(:id, :price, :ear_muffler_front) if params[:marchandise][:ear_muffler_code]

    @tie = TieNeck.where(staff_member: @current_staff.id, code: params[:marchandise][:tie_code]).pluck(:id, :price, :tie_one) if params[:marchandise][:tie_code]

    @muffler = Muffler.where(staff_member: @current_staff.id, code: params[:marchandise][:muffler_code]).pluck(:id, :price, :muffler_front) if params[:marchandise][:muffler_code]

    @tie_pin = TiePin.where(staff_member: @current_staff.id, code: params[:marchandise][:tie_pin_code]).pluck(:id, :price, :tie_pin_one) if params[:marchandise][:tie_pin_code]

    @knit = Knit.where(staff_member: @current_staff.id, code: params[:marchandise][:knit_code]).pluck(:id, :price, :knit_front) if params[:marchandise][:knit_code]

    @vest = Vest.where(staff_member: @current_staff.id, code: params[:marchandise][:vest_code]).pluck(:id, :price, :v_front) if params[:marchandise][:vest_code]

    @jacket = Jacket.where(staff_member: @current_staff.id, code: params[:marchandise][:jacket_code]).pluck(:id, :price, :j_front) if params[:marchandise][:jacket_code]

    @coat = Coat.where(staff_member: @current_staff.id, code: params[:marchandise][:coat_code]).pluck(:id, :price, :coat_front) if params[:marchandise][:coat_code]

    @chief = Pockethief.where(staff_member: @current_staff.id, code: params[:marchandise][:chief_code]).pluck(:id, :price, :chief_one) if params[:marchandise][:chief_code]

    @cuff = CuffLink.where(staff_member: @current_staff.id, code: params[:marchandise][:cuff_link_code]).pluck(:id, :price, :cuff_link_one) if params[:marchandise][:cuff_link_code]

    @lapel_pin = LapelPin.where(staff_member: @current_staff.id, code: params[:marchandise][:lapel_pin_code]).pluck(:id, :price, :lapel_pin_one) if params[:marchandise][:lapel_pin_code]

    @glove = Gant.where(staff_member: @current_staff.id, code: params[:marchandise][:glove_code]).pluck(:id, :price, :glove_front) if params[:marchandise][:glove_code]

    @belt = Belt.where(staff_member: @current_staff.id, code: params[:marchandise][:belt_code]).pluck(:id, :price, :belt_one) if params[:marchandise][:belt_code]

    @other = Other.where(staff_member: @current_staff.id, code: params[:marchandise][:other_code]).pluck(:id, :price, :other_one) if params[:marchandise][:other_code]
  end
end
