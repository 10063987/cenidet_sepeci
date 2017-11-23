class DistinctiveSignsController < ApplicationController
  before_action :set_distinctive_sign, only: [:show, :edit, :update, :destroy]

  # GET /distinctive_signs
  # GET /distinctive_signs.json
  def index
    @distinctive_signs = DistinctiveSign.all
  end

  # GET /distinctive_signs/1
  # GET /distinctive_signs/1.json
  def show
  end

  # GET /distinctive_signs/new
  def new
    @distinctive_sign = DistinctiveSign.new
  end

  # GET /distinctive_signs/1/edit
  def edit
  end

  # POST /distinctive_signs
  # POST /distinctive_signs.json
  def create
    @distinctive_sign = DistinctiveSign.new(distinctive_sign_params)

    respond_to do |format|
      if @distinctive_sign.save
        format.html { redirect_to @distinctive_sign, notice: 'Distinctive sign was successfully created.' }
        format.json { render :show, status: :created, location: @distinctive_sign }
      else
        format.html { render :new }
        format.json { render json: @distinctive_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distinctive_signs/1
  # PATCH/PUT /distinctive_signs/1.json
  def update
    respond_to do |format|
      if @distinctive_sign.update(distinctive_sign_params)
        format.html { redirect_to @distinctive_sign, notice: 'Distinctive sign was successfully updated.' }
        format.json { render :show, status: :ok, location: @distinctive_sign }
      else
        format.html { render :edit }
        format.json { render json: @distinctive_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distinctive_signs/1
  # DELETE /distinctive_signs/1.json
  def destroy
    @distinctive_sign.destroy
    respond_to do |format|
      format.html { redirect_to distinctive_signs_url, notice: 'Distinctive sign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distinctive_sign
      @distinctive_sign = DistinctiveSign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distinctive_sign_params
      params.require(:distinctive_sign).permit(:legal_concept, :file_number, :presentation_date, :denomination_title, :registration_number, :evidence, :message_id)
    end
end
