require "rails_helper"

RSpec.describe AnswerFormTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/answer_form_types").to route_to("answer_form_types#index")
    end

    it "routes to #new" do
      expect(get: "/answer_form_types/new").to route_to("answer_form_types#new")
    end

    it "routes to #show" do
      expect(get: "/answer_form_types/1").to route_to("answer_form_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/answer_form_types/1/edit").to route_to("answer_form_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/answer_form_types").to route_to("answer_form_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/answer_form_types/1").to route_to("answer_form_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/answer_form_types/1").to route_to("answer_form_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/answer_form_types/1").to route_to("answer_form_types#destroy", id: "1")
    end
  end
end
