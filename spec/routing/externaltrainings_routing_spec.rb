require "spec_helper"

describe ExternaltrainingsController do
  describe "routing" do

    it "routes to #index" do
      get("/externaltrainings").should route_to("externaltrainings#index")
    end

    it "routes to #new" do
      get("/externaltrainings/new").should route_to("externaltrainings#new")
    end

    it "routes to #show" do
      get("/externaltrainings/1").should route_to("externaltrainings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/externaltrainings/1/edit").should route_to("externaltrainings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/externaltrainings").should route_to("externaltrainings#create")
    end

    it "routes to #update" do
      put("/externaltrainings/1").should route_to("externaltrainings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/externaltrainings/1").should route_to("externaltrainings#destroy", :id => "1")
    end

  end
end
