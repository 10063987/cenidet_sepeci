class TechDevHasStudentsController < ApplicationController
  before_action :set_tech_dev_has_student, only: [:show, :edit, :update, :destroy]

  # GET /tech_dev_has_students
  # GET /tech_dev_has_students.json
  def index
    @tech_dev_has_students = TechDevHasStudent.all
  end

  # GET /tech_dev_has_students/1
  # GET /tech_dev_has_students/1.json
  def show
  end

  # GET /tech_dev_has_students/new
  def new
    @tech_dev_has_student = TechDevHasStudent.new
  end

  # GET /tech_dev_has_students/1/edit
  def edit
  end

  # POST /tech_dev_has_students
  # POST /tech_dev_has_students.json
  def create
    @tech_dev_has_student = TechDevHasStudent.new(tech_dev_has_student_params)

    respond_to do |format|
      if @tech_dev_has_student.save
        format.html { redirect_to @tech_dev_has_student, notice: 'Tech dev has student was successfully created.' }
        format.json { render :show, status: :created, location: @tech_dev_has_student }
      else
        format.html { render :new }
        format.json { render json: @tech_dev_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_dev_has_students/1
  # PATCH/PUT /tech_dev_has_students/1.json
  def update
    respond_to do |format|
      if @tech_dev_has_student.update(tech_dev_has_student_params)
        format.html { redirect_to @tech_dev_has_student, notice: 'Tech dev has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_dev_has_student }
      else
        format.html { render :edit }
        format.json { render json: @tech_dev_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_dev_has_students/1
  # DELETE /tech_dev_has_students/1.json
  def destroy
    @tech_dev_has_student.destroy
    respond_to do |format|
      format.html { redirect_to tech_dev_has_students_url, notice: 'Tech dev has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_dev_has_student
      @tech_dev_has_student = TechDevHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_dev_has_student_params
      params.require(:tech_dev_has_student).permit(:status, :tech_dev_id, :student_id)
    end
end
