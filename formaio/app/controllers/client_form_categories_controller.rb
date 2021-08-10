class ClientFormCategoriesController < ApplicationController
  before_action :set_client_form_category, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /client_form_categories or /client_form_categories.json
  def index
    @client_form_categories = ClientFormCategory.all
  end

  # GET /client_form_categories/1 or /client_form_categories/1.json
  def show
  end

  # GET /client_form_categories/new
  def new
    @client_form_category = ClientFormCategory.new
  end

  # GET /client_form_categories/1/edit
  def edit
  end

  # POST /client_form_categories or /client_form_categories.json
  def create
    @client_form_category = ClientFormCategory.new(client_form_category_params)

    respond_to do |format|
      if @client_form_category.save
        format.html { redirect_to @client_form_category, notice: "Client form category was successfully created." }
        format.json { render :show, status: :created, location: @client_form_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client_form_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_form_categories/1 or /client_form_categories/1.json
  def update
    respond_to do |format|
      if @client_form_category.update(client_form_category_params)
        format.html { redirect_to @client_form_category, notice: "Client form category was successfully updated." }
        format.json { render :show, status: :ok, location: @client_form_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client_form_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_form_categories/1 or /client_form_categories/1.json
  def destroy
    @client_form_category.destroy
    respond_to do |format|
      format.html { redirect_to client_form_categories_url, notice: "Client form category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_form_category
      @client_form_category = ClientFormCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_form_category_params
      params.require(:client_form_category).permit(:name, :description, :icon, :color, client_form_type_ids: [])
    end
end
