require 'spec_helper'

describe Owner do
  it { should have_many :ownerships }
  it { should have_many :dogs }
  
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }

  it { should have_valid(:email).when('test@test.com', 'test+spam@example.com', 'hereisanemail@example.me') }
  it { should_not have_valid(:email).when('hello','sam.is.mean') }


  context 'Uniqueness' do
    before :each do
      FactoryGirl.create(:owner)
    end

    it { should validate_uniqueness_of :email }
  end
end
