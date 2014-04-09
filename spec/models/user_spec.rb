require 'spec_helper'

describe User do

  it { should validate_presence_of :user }
  it { should validate_presence_of :email }
  it do
    FactoryGirl.create(:user)
    should validate_uniqueness_of(:email)
  end

  it { should have_secure_password }
end
