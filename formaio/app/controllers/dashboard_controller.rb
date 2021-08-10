class DashboardController < ApplicationController
  def index
    @client_forms = ClientForm.all
  end
end
