require "rails_helper"

RSpec.describe AnswerFormsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/answer_forms").to route_to("answer_forms#index")
    end

    it "routes to #new" do
      expect(get: "/answer_forms/new").to route_to("answer_forms#new")
    end

    it "routes to #show" do
      expect(get: "/answer_forms/1").to route_to("answer_forms#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/answer_forms/1/edit").to route_to("answer_forms#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/answer_forms").to route_to("answer_forms#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/answer_forms/1").to route_to("answer_forms#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/answer_forms/1").to route_to("answer_forms#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/answer_forms/1").to route_to("answer_forms#destroy", id: "1")
    end
  end
end
