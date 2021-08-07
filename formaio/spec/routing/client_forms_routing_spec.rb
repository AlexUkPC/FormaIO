require "rails_helper"

RSpec.describe ClientFormsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/client_forms").to route_to("client_forms#index")
    end

    it "routes to #new" do
      expect(get: "/client_forms/new").to route_to("client_forms#new")
    end

    it "routes to #show" do
      expect(get: "/client_forms/1").to route_to("client_forms#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/client_forms/1/edit").to route_to("client_forms#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/client_forms").to route_to("client_forms#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/client_forms/1").to route_to("client_forms#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/client_forms/1").to route_to("client_forms#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/client_forms/1").to route_to("client_forms#destroy", id: "1")
    end
  end
end
