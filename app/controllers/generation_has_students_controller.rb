class GenerationHasStudentsController < ApplicationController
  before_action :set_generation_has_student, only: [:show, :edit, :update, :destroy]

  # GET /generation_has_students
  # GET /generation_has_students.json
  def index
    @generation_has_students = GenerationHasStudent.all
  end

  # GET /generation_has_students/1
  # GET /generation_has_students/1.json
  def show
  end

  # GET /generation_has_students/new
  def new
    @generation_has_student = GenerationHasStudent.new
  end

  # GET /generation_has_students/1/edit
  def edit
  end

  # POST /generation_has_students
  # POST /generation_has_students.json
  def create
    @generation_has_student = GenerationHasStudent.new(generation_has_student_params)

    respond_to do |format|
      if @generation_has_student.save
        format.html { redirect_to @generation_has_student, notice: 'Generation has student was successfully created.' }
        format.json { render :show, status: :created, location: @generation_has_student }
      else
        format.html { render :new }
        format.json { render json: @generation_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generation_has_students/1
  # PATCH/PUT /generation_has_students/1.json
  def update
    respond_to do |format|
      if @generation_has_student.update(generation_has_student_params)
        format.html { redirect_to @generation_has_student, notice: 'Generation has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @generation_has_student }
      else
        format.html { render :edit }
        format.json { render json: @generation_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generation_has_students/1
  # DELETE /generation_has_students/1.json
  def destroy
    @generation_has_student.destroy
    respond_to do |format|
      format.html { redirect_to generation_has_students_url, notice: 'Generation has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation_has_student
      @generation_has_student = GenerationHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generation_has_student_params
      params.require(:generation_has_student).permit(:status, :generation_id, :student_id)
    end
end
