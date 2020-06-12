require 'rails_helper'

describe User do
  describe '#create' do

    it "2名のuserが登録できること" do
      @user1 = FactoryBot.create(:user)
      @user2 = FactoryBot.build(:user)
      expect(@user2).to be_valid
    end

  end
end
