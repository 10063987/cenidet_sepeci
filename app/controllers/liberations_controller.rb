class LiberationsController < ApplicationController
  before_action :set_liberation, only: [:show, :edit, :update, :destroy]

  # GET /liberations
  # GET /liberations.json
  def index
    @liberations = Liberation.all
  end

  # GET /liberations/1
  # GET /liberations/1.json
  def show
  end

  # GET /liberations/new
  def new
    @liberation = Liberation.new
  end

  # GET /liberations/1/edit
  def edit
  end

  # POST /liberations
  # POST /liberations.json
  def create
    @liberation = Liberation.new(liberation_params)

    respond_to do |format|
      if @liberation.save
        format.html { redirect_to @liberation, notice: 'Liberation was successfully created.' }
        format.json { render :show, status: :created, location: @liberation }
      else
        format.html { render :new }
        format.json { render json: @liberation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liberations/1
  # PATCH/PUT /liberations/1.json
  def update
    respond_to do |format|
      if @liberation.update(liberation_params)
        format.html { redirect_to @liberation, notice: 'Liberation was successfully updated.' }
        format.json { render :show, status: :ok, location: @liberation }
      else
        format.html { render :edit }
        format.json { render json: @liberation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liberations/1
  # DELETE /liberations/1.json
  def destroy
    @liberation.destroy
    respond_to do |format|
      format.html { redirect_to liberations_url, notice: 'Liberation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liberation
      @liberation = Liberation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liberation_params
      params.require(:liberation).permit(:photo, :cvu, :encuesta, :student_id)
    end
end
