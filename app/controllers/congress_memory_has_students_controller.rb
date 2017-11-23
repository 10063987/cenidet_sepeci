class CongressMemoryHasStudentsController < ApplicationController
  before_action :set_congress_memory_has_student, only: [:show, :edit, :update, :destroy]

  # GET /congress_memory_has_students
  # GET /congress_memory_has_students.json
  def index
    @congress_memory_has_students = CongressMemoryHasStudent.all
  end

  # GET /congress_memory_has_students/1
  # GET /congress_memory_has_students/1.json
  def show
  end

  # GET /congress_memory_has_students/new
  def new
    @congress_memory_has_student = CongressMemoryHasStudent.new
  end

  # GET /congress_memory_has_students/1/edit
  def edit
  end

  # POST /congress_memory_has_students
  # POST /congress_memory_has_students.json
  def create
    @congress_memory_has_student = CongressMemoryHasStudent.new(congress_memory_has_student_params)

    respond_to do |format|
      if @congress_memory_has_student.save
        format.html { redirect_to @congress_memory_has_student, notice: 'Congress memory has student was successfully created.' }
        format.json { render :show, status: :created, location: @congress_memory_has_student }
      else
        format.html { render :new }
        format.json { render json: @congress_memory_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congress_memory_has_students/1
  # PATCH/PUT /congress_memory_has_students/1.json
  def update
    respond_to do |format|
      if @congress_memory_has_student.update(congress_memory_has_student_params)
        format.html { redirect_to @congress_memory_has_student, notice: 'Congress memory has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @congress_memory_has_student }
      else
        format.html { render :edit }
        format.json { render json: @congress_memory_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congress_memory_has_students/1
  # DELETE /congress_memory_has_students/1.json
  def destroy
    @congress_memory_has_student.destroy
    respond_to do |format|
      format.html { redirect_to congress_memory_has_students_url, notice: 'Congress memory has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congress_memory_has_student
      @congress_memory_has_student = CongressMemoryHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congress_memory_has_student_params
      params.require(:congress_memory_has_student).permit(:status, :congress_memory_id, :student_id)
    end
end
