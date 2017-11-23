class InventionHasTeachersController < ApplicationController
  before_action :set_invention_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /invention_has_teachers
  # GET /invention_has_teachers.json
  def index
    @invention_has_teachers = InventionHasTeacher.all
  end

  # GET /invention_has_teachers/1
  # GET /invention_has_teachers/1.json
  def show
  end

  # GET /invention_has_teachers/new
  def new
    @invention_has_teacher = InventionHasTeacher.new
  end

  # GET /invention_has_teachers/1/edit
  def edit
  end

  # POST /invention_has_teachers
  # POST /invention_has_teachers.json
  def create
    @invention_has_teacher = InventionHasTeacher.new(invention_has_teacher_params)

    respond_to do |format|
      if @invention_has_teacher.save
        format.html { redirect_to @invention_has_teacher, notice: 'Invention has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @invention_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @invention_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invention_has_teachers/1
  # PATCH/PUT /invention_has_teachers/1.json
  def update
    respond_to do |format|
      if @invention_has_teacher.update(invention_has_teacher_params)
        format.html { redirect_to @invention_has_teacher, notice: 'Invention has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @invention_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @invention_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invention_has_teachers/1
  # DELETE /invention_has_teachers/1.json
  def destroy
    @invention_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to invention_has_teachers_url, notice: 'Invention has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invention_has_teacher
      @invention_has_teacher = InventionHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invention_has_teacher_params
      params.require(:invention_has_teacher).permit(:status, :invention_id, :teacher_id)
    end
end
