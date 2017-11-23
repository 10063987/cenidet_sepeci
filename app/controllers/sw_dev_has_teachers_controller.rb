class SwDevHasTeachersController < ApplicationController
  before_action :set_sw_dev_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /sw_dev_has_teachers
  # GET /sw_dev_has_teachers.json
  def index
    @sw_dev_has_teachers = SwDevHasTeacher.all
  end

  # GET /sw_dev_has_teachers/1
  # GET /sw_dev_has_teachers/1.json
  def show
  end

  # GET /sw_dev_has_teachers/new
  def new
    @sw_dev_has_teacher = SwDevHasTeacher.new
  end

  # GET /sw_dev_has_teachers/1/edit
  def edit
  end

  # POST /sw_dev_has_teachers
  # POST /sw_dev_has_teachers.json
  def create
    @sw_dev_has_teacher = SwDevHasTeacher.new(sw_dev_has_teacher_params)

    respond_to do |format|
      if @sw_dev_has_teacher.save
        format.html { redirect_to @sw_dev_has_teacher, notice: 'Sw dev has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @sw_dev_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @sw_dev_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sw_dev_has_teachers/1
  # PATCH/PUT /sw_dev_has_teachers/1.json
  def update
    respond_to do |format|
      if @sw_dev_has_teacher.update(sw_dev_has_teacher_params)
        format.html { redirect_to @sw_dev_has_teacher, notice: 'Sw dev has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @sw_dev_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @sw_dev_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sw_dev_has_teachers/1
  # DELETE /sw_dev_has_teachers/1.json
  def destroy
    @sw_dev_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to sw_dev_has_teachers_url, notice: 'Sw dev has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sw_dev_has_teacher
      @sw_dev_has_teacher = SwDevHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sw_dev_has_teacher_params
      params.require(:sw_dev_has_teacher).permit(:status, :sw_dev_id, :teacher_id)
    end
end
