require 'rails_helper'

RSpec.describe Comment, type: :model do

  context "association" do
    describe Comment do
      it { should belong_to(:user) }
    end
  end

end
