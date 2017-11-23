class PubChapterHasTeachersController < ApplicationController
  before_action :set_pub_chapter_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /pub_chapter_has_teachers
  # GET /pub_chapter_has_teachers.json
  def index
    @pub_chapter_has_teachers = PubChapterHasTeacher.all
  end

  # GET /pub_chapter_has_teachers/1
  # GET /pub_chapter_has_teachers/1.json
  def show
  end

  # GET /pub_chapter_has_teachers/new
  def new
    @pub_chapter_has_teacher = PubChapterHasTeacher.new
  end

  # GET /pub_chapter_has_teachers/1/edit
  def edit
  end

  # POST /pub_chapter_has_teachers
  # POST /pub_chapter_has_teachers.json
  def create
    @pub_chapter_has_teacher = PubChapterHasTeacher.new(pub_chapter_has_teacher_params)

    respond_to do |format|
      if @pub_chapter_has_teacher.save
        format.html { redirect_to @pub_chapter_has_teacher, notice: 'Pub chapter has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @pub_chapter_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @pub_chapter_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_chapter_has_teachers/1
  # PATCH/PUT /pub_chapter_has_teachers/1.json
  def update
    respond_to do |format|
      if @pub_chapter_has_teacher.update(pub_chapter_has_teacher_params)
        format.html { redirect_to @pub_chapter_has_teacher, notice: 'Pub chapter has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_chapter_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @pub_chapter_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_chapter_has_teachers/1
  # DELETE /pub_chapter_has_teachers/1.json
  def destroy
    @pub_chapter_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to pub_chapter_has_teachers_url, notice: 'Pub chapter has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_chapter_has_teacher
      @pub_chapter_has_teacher = PubChapterHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_chapter_has_teacher_params
      params.require(:pub_chapter_has_teacher).permit(:status, :pub_chapter_id, :teacher_id)
    end
end
