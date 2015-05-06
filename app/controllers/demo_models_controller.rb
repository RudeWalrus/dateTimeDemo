class DemoModelsController < ApplicationController
  before_action :set_demo_model, only: [:show, :edit, :update, :destroy]

  # GET /demo_models
  # GET /demo_models.json
  def index
    @demo_models = DemoModel.all
  end

  # GET /demo_models/1
  # GET /demo_models/1.json
  def show
  end

  # GET /demo_models/new
  def new
    @demo_model = DemoModel.new
  end

  # GET /demo_models/1/edit
  def edit
  end

  # POST /demo_models
  # POST /demo_models.json
  def create
    @demo_model = DemoModel.new(demo_model_params)

    respond_to do |format|
      if @demo_model.save
        format.html { redirect_to @demo_model, notice: 'Demo model was successfully created.' }
        format.json { render :show, status: :created, location: @demo_model }
      else
        format.html { render :new }
        format.json { render json: @demo_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demo_models/1
  # PATCH/PUT /demo_models/1.json
  def update
    respond_to do |format|
      if @demo_model.update(demo_model_params)
        format.html { redirect_to @demo_model, notice: 'Demo model was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo_model }
      else
        flash[:alert] = 'Validation error, could not update the model.'
        format.html { render :edit }
        format.json { render json: @demo_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_models/1
  # DELETE /demo_models/1.json
  def destroy
    @demo_model.destroy
    respond_to do |format|
      format.html { redirect_to demo_models_url, notice: 'Demo model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo_model
      @demo_model = DemoModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_model_params
      params.require(:demo_model).permit(:name, :date_field, :dateTime_field, :time_field, :comment)
    end
end
