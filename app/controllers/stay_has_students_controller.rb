class StayHasStudentsController < ApplicationController
  before_action :set_stay_has_student, only: [:show, :edit, :update, :destroy]

  # GET /stay_has_students
  # GET /stay_has_students.json
  def index
    @stay_has_students = StayHasStudent.all
  end

  # GET /stay_has_students/1
  # GET /stay_has_students/1.json
  def show
  end

  # GET /stay_has_students/new
  def new
    @stay_has_student = StayHasStudent.new
  end

  # GET /stay_has_students/1/edit
  def edit
  end

  # POST /stay_has_students
  # POST /stay_has_students.json
  def create
    @stay_has_student = StayHasStudent.new(stay_has_student_params)

    respond_to do |format|
      if @stay_has_student.save
        format.html { redirect_to @stay_has_student, notice: 'Stay has student was successfully created.' }
        format.json { render :show, status: :created, location: @stay_has_student }
      else
        format.html { render :new }
        format.json { render json: @stay_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stay_has_students/1
  # PATCH/PUT /stay_has_students/1.json
  def update
    respond_to do |format|
      if @stay_has_student.update(stay_has_student_params)
        format.html { redirect_to @stay_has_student, notice: 'Stay has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @stay_has_student }
      else
        format.html { render :edit }
        format.json { render json: @stay_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stay_has_students/1
  # DELETE /stay_has_students/1.json
  def destroy
    @stay_has_student.destroy
    respond_to do |format|
      format.html { redirect_to stay_has_students_url, notice: 'Stay has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stay_has_student
      @stay_has_student = StayHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stay_has_student_params
      params.require(:stay_has_student).permit(:status, :stay_id, :student_id)
    end
end
