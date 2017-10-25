require 'rails_helper'

RSpec.describe User, type: :model do
    describe "create" do
      it "正常に登録される" do
        user = User.new(name: 'user', email: 'user@email.com', password: 'user')
        expect(user.save).to be_truthy
      end

      it "名前が空だと保存されない" do
        user = User.new(name: '', email: 'user@email.com', password: 'user')
        expect(user.save).to be_falsey
      end

      it "emailが空でも保存されない" do
        user = User.new(name: 'user', email: '', password: 'user')
        expect(user.save).to be_falsey
      end

      it "passwordが空なんてもってのほか" do
        user = User.new(name: 'user', email: 'user@email.com', password: '')
        expect(user.save).to be_falsey
      end
    end


    describe "email format" do
      it "@なしでは登録されない" do
        user = User.new(name: 'user', email: 'useremail.com', password: 'user')
        expect(user.save).to be_falsey
      end

      it "@以降に.が無いとダメ" do
        user = User.new(name: 'user', email: 'user@emailcom', password: 'user')
        expect(user.save).to be_falsey
      end

      it "@の後に.だけでもだめ" do
        user = User.new(name: 'user', email: 'user@.', password: 'user')
        expect(user.save).to be_falsey
      end

      it "@の直後に.stringだけでもだめ" do
        user = User.new(name: 'user', email: 'user@.com', password: 'user')
        expect(user.save).to be_falsey
      end
    end

    describe "重複" do
      describe "email" do
        it "重複は認めない" do
          user = User.new(name: 'user', email: 'user@email.com', password: 'user')
          user2 = User.new(name: 'user', email: 'user@email.com', password: 'user')
          expect(user.save && user2.save).to be_falsey
        end
      end
    end
end
