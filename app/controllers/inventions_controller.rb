class InventionsController < ApplicationController
  before_action :set_invention, only: [:show, :edit, :update, :destroy]

  # GET /inventions
  # GET /inventions.json
  def index
    @inventions = Invention.all
  end

  # GET /inventions/1
  # GET /inventions/1.json
  def show
  end

  # GET /inventions/new
  def new
    @invention = Invention.new
  end

  # GET /inventions/1/edit
  def edit
  end

  # POST /inventions
  # POST /inventions.json
  def create
    @invention = Invention.new(invention_params)

    respond_to do |format|
      if @invention.save
        format.html { redirect_to @invention, notice: 'Invention was successfully created.' }
        format.json { render :show, status: :created, location: @invention }
      else
        format.html { render :new }
        format.json { render json: @invention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventions/1
  # PATCH/PUT /inventions/1.json
  def update
    respond_to do |format|
      if @invention.update(invention_params)
        format.html { redirect_to @invention, notice: 'Invention was successfully updated.' }
        format.json { render :show, status: :ok, location: @invention }
      else
        format.html { render :edit }
        format.json { render json: @invention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventions/1
  # DELETE /inventions/1.json
  def destroy
    @invention.destroy
    respond_to do |format|
      format.html { redirect_to inventions_url, notice: 'Invention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invention
      @invention = Invention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invention_params
      params.require(:invention).permit(:legal_concept, :file_number, :presentation_date, :invetion_title, :inventor, :registration_number, :evidence, :message_id)
    end
end
