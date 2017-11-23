class PubArtTypesController < ApplicationController
  before_action :set_pub_art_type, only: [:show, :edit, :update, :destroy]

  # GET /pub_art_types
  # GET /pub_art_types.json
  def index
    @pub_art_types = PubArtType.all
  end

  # GET /pub_art_types/1
  # GET /pub_art_types/1.json
  def show
  end

  # GET /pub_art_types/new
  def new
    @pub_art_type = PubArtType.new
  end

  # GET /pub_art_types/1/edit
  def edit
  end

  # POST /pub_art_types
  # POST /pub_art_types.json
  def create
    @pub_art_type = PubArtType.new(pub_art_type_params)

    respond_to do |format|
      if @pub_art_type.save
        format.html { redirect_to @pub_art_type, notice: 'Pub art type was successfully created.' }
        format.json { render :show, status: :created, location: @pub_art_type }
      else
        format.html { render :new }
        format.json { render json: @pub_art_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_art_types/1
  # PATCH/PUT /pub_art_types/1.json
  def update
    respond_to do |format|
      if @pub_art_type.update(pub_art_type_params)
        format.html { redirect_to @pub_art_type, notice: 'Pub art type was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_art_type }
      else
        format.html { render :edit }
        format.json { render json: @pub_art_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_art_types/1
  # DELETE /pub_art_types/1.json
  def destroy
    @pub_art_type.destroy
    respond_to do |format|
      format.html { redirect_to pub_art_types_url, notice: 'Pub art type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_art_type
      @pub_art_type = PubArtType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_art_type_params
      params.require(:pub_art_type).permit(:type)
    end
end
