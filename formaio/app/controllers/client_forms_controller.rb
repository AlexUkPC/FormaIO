class ClientFormsController < ApplicationController
  before_action :set_client_form, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /client_forms or /client_forms.json
  def index
    @client_forms = ClientForm.all
    @client_form_types = ClientFormType.all
    @client_form_categories = ClientFormCategory.all
  end

  # GET /client_forms/1 or /client_forms/1.json
  def show
  end

  # GET /client_forms/new
  def new
    @client_form = current_user.client_forms.build(client_form_type_id: params[:client_form_type_id])
  end

  # GET /client_forms/1/edit
  def edit
  end

  # POST /client_forms or /client_forms.json
  def create
    @client_form = current_user.client_forms.build(client_form_params)

    respond_to do |format|
      if @client_form.save
        format.html { redirect_to @client_form, notice: "Client form was successfully created." }
        format.json { render :show, status: :created, location: @client_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_forms/1 or /client_forms/1.json
  def update
    respond_to do |format|
      if @client_form.update(client_form_params)
        format.html { redirect_to @client_form, notice: "Client form was successfully updated." }
        format.json { render :show, status: :ok, location: @client_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_forms/1 or /client_forms/1.json
  def destroy
    @client_form.destroy
    respond_to do |format|
      format.html { redirect_to client_forms_url, notice: "Client form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_form
      @client_form = ClientForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_form_params
      params.require(:client_form).permit(:name, :total_price, :status, :is_payed, :client_form_type_id, :preform_term_and_conditions, :agee_preform_t_and_c, properties:{})
    end
end
