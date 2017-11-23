class CourseHasTeachersController < ApplicationController
  before_action :set_course_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /course_has_teachers
  # GET /course_has_teachers.json
  def index
    @course_has_teachers = CourseHasTeacher.all
  end

  # GET /course_has_teachers/1
  # GET /course_has_teachers/1.json
  def show
  end

  # GET /course_has_teachers/new
  def new
    @course_has_teacher = CourseHasTeacher.new
  end

  # GET /course_has_teachers/1/edit
  def edit
  end

  # POST /course_has_teachers
  # POST /course_has_teachers.json
  def create
    @course_has_teacher = CourseHasTeacher.new(course_has_teacher_params)

    respond_to do |format|
      if @course_has_teacher.save
        format.html { redirect_to @course_has_teacher, notice: 'Course has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @course_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @course_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_has_teachers/1
  # PATCH/PUT /course_has_teachers/1.json
  def update
    respond_to do |format|
      if @course_has_teacher.update(course_has_teacher_params)
        format.html { redirect_to @course_has_teacher, notice: 'Course has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @course_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_has_teachers/1
  # DELETE /course_has_teachers/1.json
  def destroy
    @course_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to course_has_teachers_url, notice: 'Course has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_has_teacher
      @course_has_teacher = CourseHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_has_teacher_params
      params.require(:course_has_teacher).permit(:status, :course_id, :teacher_id)
    end
end
