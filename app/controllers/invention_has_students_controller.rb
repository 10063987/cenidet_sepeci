class InventionHasStudentsController < ApplicationController
  before_action :set_invention_has_student, only: [:show, :edit, :update, :destroy]

  # GET /invention_has_students
  # GET /invention_has_students.json
  def index
    @invention_has_students = InventionHasStudent.all
  end

  # GET /invention_has_students/1
  # GET /invention_has_students/1.json
  def show
  end

  # GET /invention_has_students/new
  def new
    @invention_has_student = InventionHasStudent.new
  end

  # GET /invention_has_students/1/edit
  def edit
  end

  # POST /invention_has_students
  # POST /invention_has_students.json
  def create
    @invention_has_student = InventionHasStudent.new(invention_has_student_params)

    respond_to do |format|
      if @invention_has_student.save
        format.html { redirect_to @invention_has_student, notice: 'Invention has student was successfully created.' }
        format.json { render :show, status: :created, location: @invention_has_student }
      else
        format.html { render :new }
        format.json { render json: @invention_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invention_has_students/1
  # PATCH/PUT /invention_has_students/1.json
  def update
    respond_to do |format|
      if @invention_has_student.update(invention_has_student_params)
        format.html { redirect_to @invention_has_student, notice: 'Invention has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @invention_has_student }
      else
        format.html { render :edit }
        format.json { render json: @invention_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invention_has_students/1
  # DELETE /invention_has_students/1.json
  def destroy
    @invention_has_student.destroy
    respond_to do |format|
      format.html { redirect_to invention_has_students_url, notice: 'Invention has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invention_has_student
      @invention_has_student = InventionHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invention_has_student_params
      params.require(:invention_has_student).permit(:status, :invention_id, :student_id)
    end
end
