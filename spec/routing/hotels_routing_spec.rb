require "spec_helper"

describe HotelsController do
  describe "routing" do

    it "routes to root" do
      get("/").should be_routable
    end

    it "routes to #index" do
      get("/hotels").should be_routable
    end

    it "routes to #new" do
      get("/hotels/new").should be_routable
    end

    it "routes to #show" do
      get("/hotels/1").should be_routable
    end

    it "routes to #edit" do
      get("/hotels/1/edit").should be_routable
    end

    it "routes to #create" do
      post("/hotels").should be_routable
    end

    it "routes to #update" do
      put("/hotels/1").should be_routable
    end

    it "routes to #destroy" do
      delete("/hotels/1").should be_routable
    end

    it "routes to #top" do
      delete("/hotels/top").should be_routable
    end

  end

end
