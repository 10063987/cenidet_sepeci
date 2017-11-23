class PubArtsController < ApplicationController
  before_action :set_pub_art, only: [:show, :edit, :update, :destroy]

  # GET /pub_arts
  # GET /pub_arts.json
  def index
    @pub_arts = PubArt.all
  end

  # GET /pub_arts/1
  # GET /pub_arts/1.json
  def show
  end

  # GET /pub_arts/new
  def new
    @pub_art = PubArt.new
  end

  # GET /pub_arts/1/edit
  def edit
  end

  # POST /pub_arts
  # POST /pub_arts.json
  def create
    @pub_art = PubArt.new(pub_art_params)

    respond_to do |format|
      if @pub_art.save
        format.html { redirect_to @pub_art, notice: 'Pub art was successfully created.' }
        format.json { render :show, status: :created, location: @pub_art }
      else
        format.html { render :new }
        format.json { render json: @pub_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_arts/1
  # PATCH/PUT /pub_arts/1.json
  def update
    respond_to do |format|
      if @pub_art.update(pub_art_params)
        format.html { redirect_to @pub_art, notice: 'Pub art was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_art }
      else
        format.html { render :edit }
        format.json { render json: @pub_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_arts/1
  # DELETE /pub_arts/1.json
  def destroy
    @pub_art.destroy
    respond_to do |format|
      format.html { redirect_to pub_arts_url, notice: 'Pub art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_art
      @pub_art = PubArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_art_params
      params.require(:pub_art).permit(:issn_printed, :issn_electronic, :magazine_name, :article_title, :grade, :publication_date, :index, :magazine_number, :magazine_volume, :year, :start_page, :end_page, :pub_art_type_id, :evidence, :acceptance_letter, :message_id)
    end
end
