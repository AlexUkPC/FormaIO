class HomeController < ApplicationController
  def index
    @client_form_types = ClientFormType.all
    @client_form_categories = ClientFormCategory.all
  end
  def subcategory
    @client_form_category = ClientFormCategory.all
    @category_name = params[:category_name]
    client_form_category = params[:client_form_category]
    if !client_form_category.nil?
      @client_form_types = ClientFormType.joins(:client_form_categories).where(client_form_categories: {id: client_form_category})
    else
      @client_form_types = ClientFormType.all
    end
  end
end
