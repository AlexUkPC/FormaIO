class ClientFormTypesController < ApplicationController
  before_action :set_client_form_type, only: %i[ show edit update destroy ]

  # GET /client_form_types or /client_form_types.json
  def index
    @client_form_types = ClientFormType.all
  end

  # GET /client_form_types/1 or /client_form_types/1.json
  def show
  end

  # GET /client_form_types/new
  def new
    @client_form_type = ClientFormType.new
  end

  # GET /client_form_types/1/edit
  def edit
  end

  # POST /client_form_types or /client_form_types.json
  def create
    @client_form_type = ClientFormType.new(client_form_type_params)

    respond_to do |format|
      if @client_form_type.save
        format.html { redirect_to @client_form_type, notice: "Client form type was successfully created." }
        format.json { render :show, status: :created, location: @client_form_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client_form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_form_types/1 or /client_form_types/1.json
  def update
    respond_to do |format|
      if @client_form_type.update(client_form_type_params)
        format.html { redirect_to @client_form_type, notice: "Client form type was successfully updated." }
        format.json { render :show, status: :ok, location: @client_form_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client_form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_form_types/1 or /client_form_types/1.json
  def destroy
    @client_form_type.destroy
    respond_to do |format|
      format.html { redirect_to client_form_types_url, notice: "Client form type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_form_type
      @client_form_type = ClientFormType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_form_type_params
      params.require(:client_form_type).permit(:name, :description, :is_activ, :price, sections_attributes:[:id, :extra_price, :is_default, :name, questions_attributes:[:id, :answer_type, :answers_are_sections, :info, :is_required, :question, posible_answer_attributes:[:id, :answer, :section, :info]]])
    end
end
