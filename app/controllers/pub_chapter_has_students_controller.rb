class PubChapterHasStudentsController < ApplicationController
  before_action :set_pub_chapter_has_student, only: [:show, :edit, :update, :destroy]

  # GET /pub_chapter_has_students
  # GET /pub_chapter_has_students.json
  def index
    @pub_chapter_has_students = PubChapterHasStudent.all
  end

  # GET /pub_chapter_has_students/1
  # GET /pub_chapter_has_students/1.json
  def show
  end

  # GET /pub_chapter_has_students/new
  def new
    @pub_chapter_has_student = PubChapterHasStudent.new
  end

  # GET /pub_chapter_has_students/1/edit
  def edit
  end

  # POST /pub_chapter_has_students
  # POST /pub_chapter_has_students.json
  def create
    @pub_chapter_has_student = PubChapterHasStudent.new(pub_chapter_has_student_params)

    respond_to do |format|
      if @pub_chapter_has_student.save
        format.html { redirect_to @pub_chapter_has_student, notice: 'Pub chapter has student was successfully created.' }
        format.json { render :show, status: :created, location: @pub_chapter_has_student }
      else
        format.html { render :new }
        format.json { render json: @pub_chapter_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_chapter_has_students/1
  # PATCH/PUT /pub_chapter_has_students/1.json
  def update
    respond_to do |format|
      if @pub_chapter_has_student.update(pub_chapter_has_student_params)
        format.html { redirect_to @pub_chapter_has_student, notice: 'Pub chapter has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_chapter_has_student }
      else
        format.html { render :edit }
        format.json { render json: @pub_chapter_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_chapter_has_students/1
  # DELETE /pub_chapter_has_students/1.json
  def destroy
    @pub_chapter_has_student.destroy
    respond_to do |format|
      format.html { redirect_to pub_chapter_has_students_url, notice: 'Pub chapter has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_chapter_has_student
      @pub_chapter_has_student = PubChapterHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_chapter_has_student_params
      params.require(:pub_chapter_has_student).permit(:status, :pub_chapter_id, :student_id)
    end
end
