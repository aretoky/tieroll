require 'rails_helper'

RSpec.describe StaffMember, type: :model do
  describe "create test" do
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
end
