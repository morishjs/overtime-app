require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = User.create(email: 'test@test.com', password: 'asdfaf', password_confirmation: 'asdfaf', first_name: 'SNOW', last_name: 'JON')
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it 'cannot be created without first_name, last_name' do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it 'has a full name method that combines first and last name' do
     expect(@user.full_name).to eq("SNOW, JON")
    end
  end
end
