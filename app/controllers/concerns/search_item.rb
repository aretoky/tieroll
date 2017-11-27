module SearchItem
  extend ActiveSupport::Concern
  # input_any_itemsを呼ぶときは先にset_required_itemsを呼ぶ事

  # シャツ、パンツ、靴下、靴は必ず存在する
  def set_required_items
    @shurt = Shurt.where(staff_member: @current_staff.id, code: params[:marchandise][:shurt_code]).pluck(:id, :s_front, :code)
    @pant = Pant.where(staff_member: @current_staff.id, code: params[:marchandise][:pant_code])
    @socks = Sock.where(staff_member: @current_staff.id, code: params[:marchandise][:sock_code])
    @shoes = Shoe.where(staff_member: @current_staff.id, code: params[:marchandise][:shoe_code])
  end

  # 入力があれば引っ張ってくる
  def set_any_items
    @hat = Hat.where(staff_member: @current_staff.id, code: params[:marchandise][:hat_code]) if params[:marchandise][:hat_code]

    @ear_muffler = EarMuffler.where(staff_member: @current_staff.id, code: params[:marchandise][:ear_muffler_code]) if params[:marchandise][:ear_muffler_code]

    @tie = TieNeck.where(staff_member: @current_staff.id, code: params[:marchandise][:tie_code]) if params[:marchandise][:tie_code]

    @muffler = Muffler.where(staff_member: @current_staff.id, code: params[:marchandise][:muffler_code]) if params[:marchandise][:muffler_code]

    @tie_pin = TiePin.where(staff_member: @current_staff.id, code: params[:marchandise][:tie_pin_code]) if params[:marchandise][:tie_pin_code]

    @knit = Knit.where(staff_member: @current_staff.id, code: params[:marchandise][:knit_code]) if params[:marchandise][:knit_code]

    @vest = Vest.where(staff_member: @current_staff.id, code: params[:marchandise][:vest_code]) if params[:marchandise][:vest_code]

    @jacket = Jacket.where(staff_member: @current_staff.id, code: params[:marchandise][:jacket_code]) if params[:marchandise][:jacket_code]

    @coat = Coat.where(staff_member: @current_staff.id, code: params[:marchandise][:coat_code]) if params[:marchandise][:coat_code]

    @chief = PocketChief.where(staff_member: @current_staff.id, code: params[:marchandise][:chief_code]) if params[:marchandise][:chief_code]

    @cuff = CuffLink.where(staff_member: @current_staff.id, code: params[:marchandise][:cuff_link_code]).pluck(:id, :price, :cuff_link_one) if params[:marchandise][:cuff_link_code]

    @lapel_pin = LapelPin.where(staff_member: @current_staff.id, code: params[:marchandise][:lapel_pin_code]) if params[:marchandise][:lapel_pin_code]

    @glove = Gant.where(staff_member: @current_staff.id, code: params[:marchandise][:glove_code]) if params[:marchandise][:glove_code]

    @belt = Belt.where(staff_member: @current_staff.id, code: params[:marchandise][:belt_code]) if params[:marchandise][:belt_code]

    @other = Other.where(staff_member: @current_staff.id, code: params[:marchandise][:other_code]) if params[:marchandise][:other_code]
  end

  #TODO もっと簡単に書けそう
  def input_items
    # シャツ、パンツ、靴下、靴は必ずあるものとする
    # 先に↑のset_required_itemsを呼ぶこと
    @marchandise.shurt = @shurt.id
    @marchandise.pant = @pant.id
    @marchandise.sock = @socks.id
    @marchandise.shoe = @shoes.id

    @marchandise.hat = @hat.id if @hat
    @marchandise.ear_muffler = @ear_muffler.id if @ear_muffler
    @marchandise.tie_neck = @tie.id if @tie
    @marchandise.muffler = @muffler.id if @muffler
    @marchandise.tie_pin = @tie_pin.id if @tie_pin
    @marchandise.knit = @knit.id if @knit
    @marchandise.vest = @vest.id if @vest
    @marchandise.jacket = @jacket.id if @jacket
    @marchandise.coat = @coat.id if @coat
    @marchandise.pocket_chief = @chief if @chief
    @marchandise.cuff_link = @cuff.id if @cuff
    @marchandise.lapel_pin = @lapel_pin.id if @lapel_pin
    @marchandise.gant = @glove.id if @glove
    @marchandise.belt = @belt.id if @belt
    @marchandise.other = @other.id if @other
  end
end
