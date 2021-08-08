class AnswerFormTypesController < ApplicationController
  before_action :set_answer_form_type, only: %i[ show edit update destroy ]

  # GET /answer_form_types or /answer_form_types.json
  def index
    @answer_form_types = AnswerFormType.all
  end

  # GET /answer_form_types/1 or /answer_form_types/1.json
  def show
  end

  # GET /answer_form_types/new
  def new
    @answer_form_type = AnswerFormType.new
  end

  # GET /answer_form_types/1/edit
  def edit
  end

  # POST /answer_form_types or /answer_form_types.json
  def create
    @answer_form_type = AnswerFormType.new(answer_form_type_params)

    respond_to do |format|
      if @answer_form_type.save
        format.html { redirect_to @answer_form_type, notice: "Answer form type was successfully created." }
        format.json { render :show, status: :created, location: @answer_form_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @answer_form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_form_types/1 or /answer_form_types/1.json
  def update
    respond_to do |format|
      if @answer_form_type.update(answer_form_type_params)
        format.html { redirect_to @answer_form_type, notice: "Answer form type was successfully updated." }
        format.json { render :show, status: :ok, location: @answer_form_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @answer_form_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_form_types/1 or /answer_form_types/1.json
  def destroy
    @answer_form_type.destroy
    respond_to do |format|
      format.html { redirect_to answer_form_types_url, notice: "Answer form type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_form_type
      @answer_form_type = AnswerFormType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_form_type_params
      params.require(:answer_form_type).permit(:name, :client_form_type_id, components_attributes:[:id, :is_text_area, :name, properties:{}, fields_attributes:[:id, :name, :field_type, posible_answer_attributes:[:id, :answer]]])
    end
end
