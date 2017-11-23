class CongressMemoryHasTeachersController < ApplicationController
  before_action :set_congress_memory_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /congress_memory_has_teachers
  # GET /congress_memory_has_teachers.json
  def index
    @congress_memory_has_teachers = CongressMemoryHasTeacher.all
  end

  # GET /congress_memory_has_teachers/1
  # GET /congress_memory_has_teachers/1.json
  def show
  end

  # GET /congress_memory_has_teachers/new
  def new
    @congress_memory_has_teacher = CongressMemoryHasTeacher.new
  end

  # GET /congress_memory_has_teachers/1/edit
  def edit
  end

  # POST /congress_memory_has_teachers
  # POST /congress_memory_has_teachers.json
  def create
    @congress_memory_has_teacher = CongressMemoryHasTeacher.new(congress_memory_has_teacher_params)

    respond_to do |format|
      if @congress_memory_has_teacher.save
        format.html { redirect_to @congress_memory_has_teacher, notice: 'Congress memory has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @congress_memory_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @congress_memory_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congress_memory_has_teachers/1
  # PATCH/PUT /congress_memory_has_teachers/1.json
  def update
    respond_to do |format|
      if @congress_memory_has_teacher.update(congress_memory_has_teacher_params)
        format.html { redirect_to @congress_memory_has_teacher, notice: 'Congress memory has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @congress_memory_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @congress_memory_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congress_memory_has_teachers/1
  # DELETE /congress_memory_has_teachers/1.json
  def destroy
    @congress_memory_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to congress_memory_has_teachers_url, notice: 'Congress memory has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congress_memory_has_teacher
      @congress_memory_has_teacher = CongressMemoryHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congress_memory_has_teacher_params
      params.require(:congress_memory_has_teacher).permit(:status, :congress_memory_id, :teacher_id)
    end
end
