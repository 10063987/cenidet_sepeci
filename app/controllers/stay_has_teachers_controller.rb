class StayHasTeachersController < ApplicationController
  before_action :set_stay_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /stay_has_teachers
  # GET /stay_has_teachers.json
  def index
    @stay_has_teachers = StayHasTeacher.all
  end

  # GET /stay_has_teachers/1
  # GET /stay_has_teachers/1.json
  def show
  end

  # GET /stay_has_teachers/new
  def new
    @stay_has_teacher = StayHasTeacher.new
  end

  # GET /stay_has_teachers/1/edit
  def edit
  end

  # POST /stay_has_teachers
  # POST /stay_has_teachers.json
  def create
    @stay_has_teacher = StayHasTeacher.new(stay_has_teacher_params)

    respond_to do |format|
      if @stay_has_teacher.save
        format.html { redirect_to @stay_has_teacher, notice: 'Stay has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @stay_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @stay_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stay_has_teachers/1
  # PATCH/PUT /stay_has_teachers/1.json
  def update
    respond_to do |format|
      if @stay_has_teacher.update(stay_has_teacher_params)
        format.html { redirect_to @stay_has_teacher, notice: 'Stay has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @stay_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @stay_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stay_has_teachers/1
  # DELETE /stay_has_teachers/1.json
  def destroy
    @stay_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to stay_has_teachers_url, notice: 'Stay has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stay_has_teacher
      @stay_has_teacher = StayHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stay_has_teacher_params
      params.require(:stay_has_teacher).permit(:status, :stay_id, :teacher_id)
    end
end
