require "rails_helper"

RSpec.describe ClientFormCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/client_form_categories").to route_to("client_form_categories#index")
    end

    it "routes to #new" do
      expect(get: "/client_form_categories/new").to route_to("client_form_categories#new")
    end

    it "routes to #show" do
      expect(get: "/client_form_categories/1").to route_to("client_form_categories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/client_form_categories/1/edit").to route_to("client_form_categories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/client_form_categories").to route_to("client_form_categories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/client_form_categories/1").to route_to("client_form_categories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/client_form_categories/1").to route_to("client_form_categories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/client_form_categories/1").to route_to("client_form_categories#destroy", id: "1")
    end
  end
end
