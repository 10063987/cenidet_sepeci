class SwDevHasStudentsController < ApplicationController
  before_action :set_sw_dev_has_student, only: [:show, :edit, :update, :destroy]

  # GET /sw_dev_has_students
  # GET /sw_dev_has_students.json
  def index
    @sw_dev_has_students = SwDevHasStudent.all
  end

  # GET /sw_dev_has_students/1
  # GET /sw_dev_has_students/1.json
  def show
  end

  # GET /sw_dev_has_students/new
  def new
    @sw_dev_has_student = SwDevHasStudent.new
  end

  # GET /sw_dev_has_students/1/edit
  def edit
  end

  # POST /sw_dev_has_students
  # POST /sw_dev_has_students.json
  def create
    @sw_dev_has_student = SwDevHasStudent.new(sw_dev_has_student_params)

    respond_to do |format|
      if @sw_dev_has_student.save
        format.html { redirect_to @sw_dev_has_student, notice: 'Sw dev has student was successfully created.' }
        format.json { render :show, status: :created, location: @sw_dev_has_student }
      else
        format.html { render :new }
        format.json { render json: @sw_dev_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sw_dev_has_students/1
  # PATCH/PUT /sw_dev_has_students/1.json
  def update
    respond_to do |format|
      if @sw_dev_has_student.update(sw_dev_has_student_params)
        format.html { redirect_to @sw_dev_has_student, notice: 'Sw dev has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @sw_dev_has_student }
      else
        format.html { render :edit }
        format.json { render json: @sw_dev_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sw_dev_has_students/1
  # DELETE /sw_dev_has_students/1.json
  def destroy
    @sw_dev_has_student.destroy
    respond_to do |format|
      format.html { redirect_to sw_dev_has_students_url, notice: 'Sw dev has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sw_dev_has_student
      @sw_dev_has_student = SwDevHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sw_dev_has_student_params
      params.require(:sw_dev_has_student).permit(:status, :sw_dev_id, :student_id)
    end
end
