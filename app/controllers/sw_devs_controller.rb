class SwDevsController < ApplicationController
  before_action :set_sw_dev, only: [:show, :edit, :update, :destroy]

  # GET /sw_devs
  # GET /sw_devs.json
  def index
    @sw_devs = SwDev.all
  end

  # GET /sw_devs/1
  # GET /sw_devs/1.json
  def show
  end

  # GET /sw_devs/new
  def new
    @sw_dev = SwDev.new
  end

  # GET /sw_devs/1/edit
  def edit
  end

  # POST /sw_devs
  # POST /sw_devs.json
  def create
    @sw_dev = SwDev.new(sw_dev_params)

    respond_to do |format|
      if @sw_dev.save
        format.html { redirect_to @sw_dev, notice: 'Sw dev was successfully created.' }
        format.json { render :show, status: :created, location: @sw_dev }
      else
        format.html { render :new }
        format.json { render json: @sw_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sw_devs/1
  # PATCH/PUT /sw_devs/1.json
  def update
    respond_to do |format|
      if @sw_dev.update(sw_dev_params)
        format.html { redirect_to @sw_dev, notice: 'Sw dev was successfully updated.' }
        format.json { render :show, status: :ok, location: @sw_dev }
      else
        format.html { render :edit }
        format.json { render json: @sw_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sw_devs/1
  # DELETE /sw_devs/1.json
  def destroy
    @sw_dev.destroy
    respond_to do |format|
      format.html { redirect_to sw_devs_url, notice: 'Sw dev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sw_dev
      @sw_dev = SwDev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sw_dev_params
      params.require(:sw_dev).permit(:sw_dev_title, :copyright, :beneficiary, :objctive, :evidence, :sw_dev_type_id, :message_id)
    end
end
