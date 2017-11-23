class TechDevTypesController < ApplicationController
  before_action :set_tech_dev_type, only: [:show, :edit, :update, :destroy]

  # GET /tech_dev_types
  # GET /tech_dev_types.json
  def index
    @tech_dev_types = TechDevType.all
  end

  # GET /tech_dev_types/1
  # GET /tech_dev_types/1.json
  def show
  end

  # GET /tech_dev_types/new
  def new
    @tech_dev_type = TechDevType.new
  end

  # GET /tech_dev_types/1/edit
  def edit
  end

  # POST /tech_dev_types
  # POST /tech_dev_types.json
  def create
    @tech_dev_type = TechDevType.new(tech_dev_type_params)

    respond_to do |format|
      if @tech_dev_type.save
        format.html { redirect_to @tech_dev_type, notice: 'Tech dev type was successfully created.' }
        format.json { render :show, status: :created, location: @tech_dev_type }
      else
        format.html { render :new }
        format.json { render json: @tech_dev_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_dev_types/1
  # PATCH/PUT /tech_dev_types/1.json
  def update
    respond_to do |format|
      if @tech_dev_type.update(tech_dev_type_params)
        format.html { redirect_to @tech_dev_type, notice: 'Tech dev type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_dev_type }
      else
        format.html { render :edit }
        format.json { render json: @tech_dev_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_dev_types/1
  # DELETE /tech_dev_types/1.json
  def destroy
    @tech_dev_type.destroy
    respond_to do |format|
      format.html { redirect_to tech_dev_types_url, notice: 'Tech dev type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_dev_type
      @tech_dev_type = TechDevType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_dev_type_params
      params.require(:tech_dev_type).permit(:type)
    end
end
