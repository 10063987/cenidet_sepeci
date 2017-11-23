class StudentHasSemestersController < ApplicationController
  before_action :set_student_has_semester, only: [:show, :edit, :update, :destroy]

  # GET /student_has_semesters
  # GET /student_has_semesters.json
  def index
    @student_has_semesters = StudentHasSemester.all
  end

  # GET /student_has_semesters/1
  # GET /student_has_semesters/1.json
  def show
  end

  # GET /student_has_semesters/new
  def new
    @student_has_semester = StudentHasSemester.new
  end

  # GET /student_has_semesters/1/edit
  def edit
  end

  # POST /student_has_semesters
  # POST /student_has_semesters.json
  def create
    @student_has_semester = StudentHasSemester.new(student_has_semester_params)

    respond_to do |format|
      if @student_has_semester.save
        format.html { redirect_to @student_has_semester, notice: 'Student has semester was successfully created.' }
        format.json { render :show, status: :created, location: @student_has_semester }
      else
        format.html { render :new }
        format.json { render json: @student_has_semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_has_semesters/1
  # PATCH/PUT /student_has_semesters/1.json
  def update
    respond_to do |format|
      if @student_has_semester.update(student_has_semester_params)
        format.html { redirect_to @student_has_semester, notice: 'Student has semester was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_has_semester }
      else
        format.html { render :edit }
        format.json { render json: @student_has_semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_has_semesters/1
  # DELETE /student_has_semesters/1.json
  def destroy
    @student_has_semester.destroy
    respond_to do |format|
      format.html { redirect_to student_has_semesters_url, notice: 'Student has semester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_has_semester
      @student_has_semester = StudentHasSemester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_has_semester_params
      params.require(:student_has_semester).permit(:concluido, :student_id, :semester_id)
    end
end
