require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = User.create(email: 'test@test.com', password:'monkey', password_confirmation:'monkey', first_name:'Jon', last_name: 'Snow')
    end

    it 'can be crreated' do
      expect(@user).to be_valid
    end
    it 'cannot be crreated without first_name, last_name' do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end
