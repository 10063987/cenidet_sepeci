class DistinctiveSignHasStudentsController < ApplicationController
  before_action :set_distinctive_sign_has_student, only: [:show, :edit, :update, :destroy]

  # GET /distinctive_sign_has_students
  # GET /distinctive_sign_has_students.json
  def index
    @distinctive_sign_has_students = DistinctiveSignHasStudent.all
  end

  # GET /distinctive_sign_has_students/1
  # GET /distinctive_sign_has_students/1.json
  def show
  end

  # GET /distinctive_sign_has_students/new
  def new
    @distinctive_sign_has_student = DistinctiveSignHasStudent.new
  end

  # GET /distinctive_sign_has_students/1/edit
  def edit
  end

  # POST /distinctive_sign_has_students
  # POST /distinctive_sign_has_students.json
  def create
    @distinctive_sign_has_student = DistinctiveSignHasStudent.new(distinctive_sign_has_student_params)

    respond_to do |format|
      if @distinctive_sign_has_student.save
        format.html { redirect_to @distinctive_sign_has_student, notice: 'Distinctive sign has student was successfully created.' }
        format.json { render :show, status: :created, location: @distinctive_sign_has_student }
      else
        format.html { render :new }
        format.json { render json: @distinctive_sign_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distinctive_sign_has_students/1
  # PATCH/PUT /distinctive_sign_has_students/1.json
  def update
    respond_to do |format|
      if @distinctive_sign_has_student.update(distinctive_sign_has_student_params)
        format.html { redirect_to @distinctive_sign_has_student, notice: 'Distinctive sign has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @distinctive_sign_has_student }
      else
        format.html { render :edit }
        format.json { render json: @distinctive_sign_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distinctive_sign_has_students/1
  # DELETE /distinctive_sign_has_students/1.json
  def destroy
    @distinctive_sign_has_student.destroy
    respond_to do |format|
      format.html { redirect_to distinctive_sign_has_students_url, notice: 'Distinctive sign has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distinctive_sign_has_student
      @distinctive_sign_has_student = DistinctiveSignHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distinctive_sign_has_student_params
      params.require(:distinctive_sign_has_student).permit(:status, :distinctive_sign_id, :student_id)
    end
end
