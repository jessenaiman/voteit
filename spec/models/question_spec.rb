require 'spec_helper'

describe Question do
  it {should validate_presence_of(:name)}
  it {should belong_to(:user)}
  it {should belong_to(:group)}
end
