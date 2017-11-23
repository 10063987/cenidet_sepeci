class SwDevTypesController < ApplicationController
  before_action :set_sw_dev_type, only: [:show, :edit, :update, :destroy]

  # GET /sw_dev_types
  # GET /sw_dev_types.json
  def index
    @sw_dev_types = SwDevType.all
  end

  # GET /sw_dev_types/1
  # GET /sw_dev_types/1.json
  def show
  end

  # GET /sw_dev_types/new
  def new
    @sw_dev_type = SwDevType.new
  end

  # GET /sw_dev_types/1/edit
  def edit
  end

  # POST /sw_dev_types
  # POST /sw_dev_types.json
  def create
    @sw_dev_type = SwDevType.new(sw_dev_type_params)

    respond_to do |format|
      if @sw_dev_type.save
        format.html { redirect_to @sw_dev_type, notice: 'Sw dev type was successfully created.' }
        format.json { render :show, status: :created, location: @sw_dev_type }
      else
        format.html { render :new }
        format.json { render json: @sw_dev_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sw_dev_types/1
  # PATCH/PUT /sw_dev_types/1.json
  def update
    respond_to do |format|
      if @sw_dev_type.update(sw_dev_type_params)
        format.html { redirect_to @sw_dev_type, notice: 'Sw dev type was successfully updated.' }
        format.json { render :show, status: :ok, location: @sw_dev_type }
      else
        format.html { render :edit }
        format.json { render json: @sw_dev_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sw_dev_types/1
  # DELETE /sw_dev_types/1.json
  def destroy
    @sw_dev_type.destroy
    respond_to do |format|
      format.html { redirect_to sw_dev_types_url, notice: 'Sw dev type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sw_dev_type
      @sw_dev_type = SwDevType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sw_dev_type_params
      params.require(:sw_dev_type).permit(:type)
    end
end
