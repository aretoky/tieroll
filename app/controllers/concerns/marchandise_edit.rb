module MarchandiseEdit
  extend ActiveSupport::Concern


  def set_required_items_photos
    # TODO 本当は一回で取り出したいけど今はcarrierwaveの画像ファイルに重複があるからこの方法で実装する
    shurts = Shurt.where(staff_member: @current_staff.id)
    @shurt = shurts.find_by(id: @marchandise.shurt_id)

    pants = Pant.where(staff_member: @current_staff.id)
    @pant = pants.find_by(id: @marchandise.pant_id)

    socks = Sock.where(staff_member: @current_staff.id)
    @socks = socks.find_by(id: @marchandise.sock_id)

    shoes = Shoe.where(staff_member: @current_staff.id)
    @shoes = shoes.find_by(id: @marchandise.shoe_id)

  end


  def set_any_items_photos
    # @hat = Hat.where(staff_member: @current_staff.id, id: @marchandise.hat).select(:hat_front)
    if @marchandise.hat
      hats = Hat.where(staff_member: @current_staff.id)
      @hat = hats.find_by(id: @marchandise.hat_id)
    end

    if @marchandise.ear_muffler
      ear_mufflers = EarMuffler.where(staff_member: @current_staff.id)
      @ear_muffler = ear_mufflers.find_by(id: @marchandise.ear_muffler_id)
    end

    if @marchandise.tie_neck
      ties = TieNeck.where(staff_member: @current_staff.id)
      @tie = ties.find_by(id: @marchandise.tie_neck_id)
    end

    if @marchandise.muffler
      mufflers = Muffler.where(staff_member: @current_staff.id)
      @muffler = mufflers.find_by(id: @marchandise.muffler_id)
    end

    if @marchandise.tie_pin
      tie_pins = TiePin.where(staff_member: @current_staff.id)
      @tie_pin = tie_pins.find_by(id: @marchandise.tie_pin_id)
    end

    if @marchandise.knit
      knits = Knit.where(staff_member: @current_staff.id)
      @knit = knits.find_by(id: @marchandise.knit_id)
    end

    if @marchandise.vest
      vests = Vest.where(staff_member: @current_staff.id)
      @vest = vests.find_by(id: @marchandise.vest_id)
    end

    if @marchandise.jacket
      jackets = Jacket.where(staff_member: @current_staff.id)
      @jacket = jackets.find_by(id: @marchandise.jacket_id)
    end

    if @marchandise.coat
      coats = Coat.where(staff_member: @current_staff.id)
      @coat = coats.find_by(id: @marchandise.coat_id)
    end

    if @marchandise.pocket_chief
      chiefs = PocketChief.where(staff_member: @current_staff.id)
      @chief = chiefs.find_by(id: @marchandise.pocket_chief_id)
    end

    if @marchandise.cuff_link
      cuffs = CuffLink.where(staff_member: @current_staff.id)
      @cuff = cuffs.find_by(id: @marchandise.cuff_link_id)
    end

    if @marchandise.lapel_pin
      lapins = LapelPin.where(staff_member: @current_staff.id)
      @lapel_pin = lapins.find_by(id: @marchandise.lapel_pin_id)
    end

    if @marchandise.gant
      gloves = Gant.where(staff_member: @current_staff.id)
      @glove = gloves.find_by(id: @marchandise.gant_id)
    end

    if @marchandise.belt
      belts = Belt.where(staff_member: @current_staff.id)
      @belt = belts.find_by(id: @marchandise.belt_id)
    end
  end
end
