require 'rails_helper'

RSpec.describe Admin, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "admin create test" do
    it "正常に登録される" do
      admin = Admin.new(name: 'adminuser', email: 'admin@email.com', password: 'admin')
      expect(admin.save).to be_truthy
    end

    it "名前が空だと保存されない" do
      admin = Admin.new(name: '', email: 'admin@email.com', password: 'admin')
      expect(admin.save).to be_falsey
    end

    it "emailが空でも保存されない" do
      admin = Admin.new(name: 'admin', email: '', password: 'admin')
      expect(admin.save).to be_falsey
    end

    it "passwordが空なんてもってのほか" do
      admin = Admin.new(name: 'admin', email: 'admin@email.com', password: '')
      expect(admin.save).to be_falsey
    end
  end


  describe "admin email formt test" do
    it "@なしでは登録できない" do
      admin = Admin.new(name: 'adminuser', email: 'adminemail.com', password: 'admin')
      expect(admin.save).to be_falsey
    end

    it "@以降に.が無いとだめですよ" do
      admin = Admin.new(name: 'adminuser', email: 'admin@emailcom', password: 'admin')
      expect(admin.save).to be_falsey
    end

    it "emailの重複は許可されない" do
      admin = Admin.new(name: 'adminuser', email: 'admin@email.com', password: 'admin')
      admin2 = Admin.new(name: 'adminuser', email: 'admin@email.com', password: 'admin')
      expect(admin.save && admin2.save).to be_falsey
    end
  end
end
