require "spec_helper"

describe AddGroupToUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/add_group_to_users").should route_to("add_group_to_users#index")
    end

    it "routes to #new" do
      get("/add_group_to_users/new").should route_to("add_group_to_users#new")
    end

    it "routes to #show" do
      get("/add_group_to_users/1").should route_to("add_group_to_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/add_group_to_users/1/edit").should route_to("add_group_to_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/add_group_to_users").should route_to("add_group_to_users#create")
    end

    it "routes to #update" do
      put("/add_group_to_users/1").should route_to("add_group_to_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/add_group_to_users/1").should route_to("add_group_to_users#destroy", :id => "1")
    end

  end
end
