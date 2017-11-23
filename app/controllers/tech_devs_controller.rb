class TechDevsController < ApplicationController
  before_action :set_tech_dev, only: [:show, :edit, :update, :destroy]

  # GET /tech_devs
  # GET /tech_devs.json
  def index
    @tech_devs = TechDev.all
  end

  # GET /tech_devs/1
  # GET /tech_devs/1.json
  def show
  end

  # GET /tech_devs/new
  def new
    @tech_dev = TechDev.new
  end

  # GET /tech_devs/1/edit
  def edit
  end

  # POST /tech_devs
  # POST /tech_devs.json
  def create
    @tech_dev = TechDev.new(tech_dev_params)

    respond_to do |format|
      if @tech_dev.save
        format.html { redirect_to @tech_dev, notice: 'Tech dev was successfully created.' }
        format.json { render :show, status: :created, location: @tech_dev }
      else
        format.html { render :new }
        format.json { render json: @tech_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_devs/1
  # PATCH/PUT /tech_devs/1.json
  def update
    respond_to do |format|
      if @tech_dev.update(tech_dev_params)
        format.html { redirect_to @tech_dev, notice: 'Tech dev was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_dev }
      else
        format.html { render :edit }
        format.json { render json: @tech_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_devs/1
  # DELETE /tech_devs/1.json
  def destroy
    @tech_dev.destroy
    respond_to do |format|
      format.html { redirect_to tech_devs_url, notice: 'Tech dev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_dev
      @tech_dev = TechDev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_dev_params
      params.require(:tech_dev).permit(:dev_name, :support_document, :objective, :summary, :evidence, :tech_dev_type, :message_id)
    end
end
