require 'spec_helper'

describe Group do
  it "Should respond to title" do
    should respond_to(:title)
  end

  it 'raise an error if saved without a user' do
    g = Group.new
    expect { g.save! }.to raise_error
  end

  it 'allows user to join group' do
    g = Group.create(title: "Test")
    u = FactoryGirl.create(:user)
    g.users << u
    g.users.count should be > 0
  end
end
