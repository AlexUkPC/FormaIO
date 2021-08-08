class AnswerFormsController < ApplicationController
  before_action :set_answer_form, only: %i[ show edit update destroy ]

  # GET /answer_forms or /answer_forms.json
  def index
    @answer_forms = AnswerForm.all
  end

  # GET /answer_forms/1 or /answer_forms/1.json
  def show
  end

  # GET /answer_forms/new
  def new
    @answer_form = AnswerForm.new(answer_form_type_id: params[:answer_form_type_id])
  end

  # GET /answer_forms/1/edit
  def edit
  end

  # POST /answer_forms or /answer_forms.json
  def create
    @answer_form = AnswerForm.new(answer_form_params)

    respond_to do |format|
      if @answer_form.save
        format.html { redirect_to @answer_form, notice: "Answer form was successfully created." }
        format.json { render :show, status: :created, location: @answer_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @answer_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_forms/1 or /answer_forms/1.json
  def update
    respond_to do |format|
      if @answer_form.update(answer_form_params)
        format.html { redirect_to @answer_form, notice: "Answer form was successfully updated." }
        format.json { render :show, status: :ok, location: @answer_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @answer_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_forms/1 or /answer_forms/1.json
  def destroy
    @answer_form.destroy
    respond_to do |format|
      format.html { redirect_to answer_forms_url, notice: "Answer form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_form
      @answer_form = AnswerForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_form_params
      params.require(:answer_form).permit(:name, :status, :total_price, :answer_form_type_id, properties:{})
    end
end
