require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create!(email: "test@test.com", password: "testpassword5", first: "FirstTest", last: "LastTest", aboutme: "I am a test.")
  end

  context "create" do
    it "should have a test item" do
      expect(User.all.count).to eq(1)
    end
  end

  context "validations" do
    it "should not let user be created without email" do
      @user.email = nil
      expect(@user).to_not be_valid
    end
    it "should not let user be created without password" do
      @user.password = nil
      expect(@user).to_not be_valid
    end
    describe User do
      it do
        should validate_length_of(:password).
          is_at_least(6).
          on(:create)
      end
    end
  end

  context "association" do
    describe User do
      it { should have_many(:comments) }
    end
    describe User do
      it { should have_many(:messages) }
    end
  end

end

# t.string "email", default: "", null: false
# t.string "encrypted_password", default: "", null: false
# t.string "reset_password_token"
# t.datetime "reset_password_sent_at"
# t.datetime "remember_created_at"
# t.integer "sign_in_count", default: 0, null: false
# t.datetime "current_sign_in_at"
# t.datetime "last_sign_in_at"
# t.string "current_sign_in_ip"
# t.string "last_sign_in_ip"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.string "first"
# t.string "last"
# t.text "aboutme"
# t.index ["email"], name: "index_users_on_email", unique: true
# t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
