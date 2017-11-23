class PubChaptersController < ApplicationController
  before_action :set_pub_chapter, only: [:show, :edit, :update, :destroy]

  # GET /pub_chapters
  # GET /pub_chapters.json
  def index
    @pub_chapters = PubChapter.all
  end

  # GET /pub_chapters/1
  # GET /pub_chapters/1.json
  def show
  end

  # GET /pub_chapters/new
  def new
    @pub_chapter = PubChapter.new
  end

  # GET /pub_chapters/1/edit
  def edit
  end

  # POST /pub_chapters
  # POST /pub_chapters.json
  def create
    @pub_chapter = PubChapter.new(pub_chapter_params)

    respond_to do |format|
      if @pub_chapter.save
        format.html { redirect_to @pub_chapter, notice: 'Pub chapter was successfully created.' }
        format.json { render :show, status: :created, location: @pub_chapter }
      else
        format.html { render :new }
        format.json { render json: @pub_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_chapters/1
  # PATCH/PUT /pub_chapters/1.json
  def update
    respond_to do |format|
      if @pub_chapter.update(pub_chapter_params)
        format.html { redirect_to @pub_chapter, notice: 'Pub chapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_chapter }
      else
        format.html { render :edit }
        format.json { render json: @pub_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_chapters/1
  # DELETE /pub_chapters/1.json
  def destroy
    @pub_chapter.destroy
    respond_to do |format|
      format.html { redirect_to pub_chapters_url, notice: 'Pub chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_chapter
      @pub_chapter = PubChapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_chapter_params
      params.require(:pub_chapter).permit(:isbn, :chapter_title, :publisher, :edition_number, :chapter_number, :start_page, :end_page, :evidence, :message_id)
    end
end
