require 'rails_helper'

RSpec.describe Admin, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "create test" do
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


  describe "email formt test" do
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


  describe "name length test" do
    it "３文字は保存されない" do
      admin = Admin.new(name: '123', email: 'admin@email.com', password: 'admin')
      expect(admin.save).to be_falsey
    end

    it "４文字は保存される" do
      admin = Admin.new(name: '1234', email: 'admin@email.com', password: 'admin')
      expect(admin.save).to be_truthy
    end

    it "16文字は保存される" do
      admin = Admin.new(name: '1234512345123456', email: 'admin@email.com', password: 'admin')
      expect(admin.save).to be_truthy
    end

    it "17文字は保存されない" do
      admin = Admin.new(name: '12345123451234567', email: 'admin@email.com', password: 'admin')
      expect(admin.save).to be_falsey
    end
  end


  describe "空白処理" do
    describe "nameの空白処理" do

      it "先頭の空白を除去" do
        admin = Admin.new(name: ' admin', email: 'admin@email.com', password: 'admin')
        admin.save
        expect(admin.name).to eq('admin')
      end

      it "末尾の空白を除去" do
        admin = Admin.new(name: 'admin ', email: 'admin@email.com', password: 'admin')
        admin.save
        expect(admin.name).to eq('admin')
      end

      it "文字の間の空白を除去" do
        admin = Admin.new(name: 'ad min', email: 'admin@email.com', password: 'admin')
        admin.save
        expect(admin.name).to eq('admin')
      end

      it "空白がどこにあっても除去" do
        admin = Admin.new(name: ' ad m in ', email: 'admin@email.com', password: 'admin')
        admin.save
        expect(admin.name).to eq('admin')
      end
    end


    describe "emailの空白処理" do
      it "先頭の空白を除去" do
        admin = Admin.new(name: 'admin', email: ' admin@email.com', password: 'admin')
        admin.save
        expect(admin.email).to eq('admin@email.com')
      end

      it "末尾の空白除去" do
        admin = Admin.new(name: 'admin', email: 'admin@email.com ', password: 'admin')
        admin.save
        expect(admin.email).to eq('admin@email.com')
      end

      it "文字の間の空白を除去" do
        admin = Admin.new(name: 'admin', email: 'admin@ email.com', password: 'admin')
        admin.save
        expect(admin.email).to eq('admin@email.com')
      end

      it "空白がどこにあっても除去" do
        admin = Admin.new(name: 'admin', email: ' a dmin @ email.com ', password: 'admin')
        admin.save
        expect(admin.email).to eq('admin@email.com')
      end
    end
  end   

end
