class CourseHasStudentsController < ApplicationController
  before_action :set_course_has_student, only: [:show, :edit, :update, :destroy]

  # GET /course_has_students
  # GET /course_has_students.json
  def index
    @course_has_students = CourseHasStudent.all
  end

  # GET /course_has_students/1
  # GET /course_has_students/1.json
  def show
  end

  # GET /course_has_students/new
  def new
    @course_has_student = CourseHasStudent.new
  end

  # GET /course_has_students/1/edit
  def edit
  end

  # POST /course_has_students
  # POST /course_has_students.json
  def create
    @course_has_student = CourseHasStudent.new(course_has_student_params)

    respond_to do |format|
      if @course_has_student.save
        format.html { redirect_to @course_has_student, notice: 'Course has student was successfully created.' }
        format.json { render :show, status: :created, location: @course_has_student }
      else
        format.html { render :new }
        format.json { render json: @course_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_has_students/1
  # PATCH/PUT /course_has_students/1.json
  def update
    respond_to do |format|
      if @course_has_student.update(course_has_student_params)
        format.html { redirect_to @course_has_student, notice: 'Course has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_has_student }
      else
        format.html { render :edit }
        format.json { render json: @course_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_has_students/1
  # DELETE /course_has_students/1.json
  def destroy
    @course_has_student.destroy
    respond_to do |format|
      format.html { redirect_to course_has_students_url, notice: 'Course has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_has_student
      @course_has_student = CourseHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_has_student_params
      params.require(:course_has_student).permit(:status, :course_id, :student_id)
    end
end
