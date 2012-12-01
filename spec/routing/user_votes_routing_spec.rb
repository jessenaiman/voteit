require "spec_helper"

describe UserVotesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_votes").should route_to("user_votes#index")
    end

    it "routes to #new" do
      get("/user_votes/new").should route_to("user_votes#new")
    end

    it "routes to #show" do
      get("/user_votes/1").should route_to("user_votes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_votes/1/edit").should route_to("user_votes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_votes").should route_to("user_votes#create")
    end

    it "routes to #update" do
      put("/user_votes/1").should route_to("user_votes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_votes/1").should route_to("user_votes#destroy", :id => "1")
    end

  end
end
