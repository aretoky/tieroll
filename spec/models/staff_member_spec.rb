require 'rails_helper'

RSpec.describe StaffMember, type: :model do
  describe "create" do
    it "正常に登録される" do
      staff = StaffMember.new(company: 'tieroll', email: 'staff@email.com', password: 'staffmember')
      expect(staff.save).to be_truthy
    end

    it "会社名が空だと保存されない" do
      staff = StaffMember.new(company: '', email: 'staff@email.com', password: 'staffmember')
      expect(staff.save).to be_falsey
    end

    it "emailが空でも保存されない" do
      staff = StaffMember.new(company: 'tieroll', email: '', password: 'staffmember')
      expect(staff.save).to be_falsey
    end

    it "passwordが空なんてもってのほか" do
      staff = StaffMember.new(company: 'tieroll', email: 'staff@email.com', password: '')
      expect(staff.save).to be_falsey
    end
  end


  describe "email format" do
    it "@なしでは登録できない" do
      staff = StaffMember.new(company: 'staffuser', email: 'staffemail.com', password: 'staffmember')
      expect(staff.save).to be_falsey
    end

    it "@以降に.が無いとだめですよ" do
      staff = StaffMember.new(company: 'staffuser', email: 'staff@emailcom', password: 'staffmember')
      expect(staff.save).to be_falsey
    end

    it "@の後に.だけでもだめですからね" do
      staff = StaffMember.new(company: 'staffuser', email: 'staff@.', password: 'staffmember')
      expect(staff.save).to be_falsey
    end

    it "@の直後に.comでも保存されない" do
      staff = StaffMember.new(company: 'staffuser', email: 'staff@.com', password: 'staffmember')
      expect(staff.save).to be_falsey
    end

    it "emailの重複は許可されない" do
      staff = StaffMember.new(company: 'staffuser', email: 'staff@email.com', password: 'staffmember')
      staff2 = StaffMember.new(company: 'staffuser', email: 'staff@email.com', password: 'staffmember')
      expect(staff.save && staff2.save).to be_falsey
    end
  end

  describe "company length" do
    it "34文字は登録できる" do
      staff = StaffMember.new(company: '5351 POUR LES HOMMES ET LES FEMMES', email: 'staff@email.com', password: 'staffmember')
      expect(staff.save).to be_truthy
    end

    it "35文字は登録できない" do
      staff = StaffMember.new(company: '5351 POUR LES HOMMES ET LES FEMMES1', email: 'staff@email.com', password: 'staffmember')
      expect(staff.save).to be_falsey
    end
  end

  describe "空白処理" do
    describe "company" do
      it "前後の空白を除去" do
        staff = StaffMember.new(company: ' staffuser ', email: 'staff@email.com', password: 'staffmember')
        staff.save
        expect(staff.company).to eq('staffuser')
      end

      it "前後に空白がいくつかあっても除去" do
        staff = StaffMember.new(company: '  staffuser  ', email: 'staff@email.com', password: 'staffmember')
        staff.save
        expect(staff.company).to eq('staffuser')
      end

      it "でも文字の間にある空白はそのまま" do
        staff = StaffMember.new(company: 'staff user', email: 'staff@email.com', password: 'staffmember')
        staff.save
        expect(staff.company).to eq('staff user')
      end

      it "文字の間に空白が2つ以上続いた時に一つにする" do
        staff = StaffMember.new(company: 'staff       us   er', email: 'staff@email.com', password: 'staffmember')
        staff.save
        expect(staff.company).to eq('staff user')
      end
    end
  end

end
