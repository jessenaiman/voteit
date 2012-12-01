require 'spec_helper'

describe User do
  it "should allow not allow empty users to be saved" do
    u = User.create
    expect { u.save! }.to raise_error
  end
end
