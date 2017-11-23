class GenerationHasTeachersController < ApplicationController
  before_action :set_generation_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /generation_has_teachers
  # GET /generation_has_teachers.json
  def index
    @generation_has_teachers = GenerationHasTeacher.all
  end

  # GET /generation_has_teachers/1
  # GET /generation_has_teachers/1.json
  def show
  end

  # GET /generation_has_teachers/new
  def new
    @generation_has_teacher = GenerationHasTeacher.new
  end

  # GET /generation_has_teachers/1/edit
  def edit
  end

  # POST /generation_has_teachers
  # POST /generation_has_teachers.json
  def create
    @generation_has_teacher = GenerationHasTeacher.new(generation_has_teacher_params)

    respond_to do |format|
      if @generation_has_teacher.save
        format.html { redirect_to @generation_has_teacher, notice: 'Generation has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @generation_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @generation_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generation_has_teachers/1
  # PATCH/PUT /generation_has_teachers/1.json
  def update
    respond_to do |format|
      if @generation_has_teacher.update(generation_has_teacher_params)
        format.html { redirect_to @generation_has_teacher, notice: 'Generation has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @generation_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @generation_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generation_has_teachers/1
  # DELETE /generation_has_teachers/1.json
  def destroy
    @generation_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to generation_has_teachers_url, notice: 'Generation has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation_has_teacher
      @generation_has_teacher = GenerationHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generation_has_teacher_params
      params.require(:generation_has_teacher).permit(:status, :generation_id, :teacher_id)
    end
end
