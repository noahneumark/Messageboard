require 'rails_helper'

RSpec.describe Message, type: :model do

  # before(:each) do
  #   @user = User.create!(email: "test@test.com", password: "testpassword5", first: "FirstTest", last: "LastTest", aboutme: "I am a test.")
  #   @message = Message.create!(title: "Test Title", body: "Test body blah blah", user_id: "1")
  # end

  context "association" do
    describe Message do
      it { should have_many(:comments) }
    end
    describe Message do
      it { should belong_to(:user) }
    end
  end

  context "validations" do
    describe Message do
      it { should validate_presence_of(:title) }
    end
    describe Message do
      it { should validate_presence_of(:body) }
    end
  end

end

# t.string "title"
# t.text "body"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "user_id"
