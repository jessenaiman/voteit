require 'spec_helper'

describe "AddGroupToUsers" do
  describe "GET /add_group_to_users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get add_group_to_users_path
      response.status.should be(200)
    end
  end
end
