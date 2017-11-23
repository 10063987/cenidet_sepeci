class DistinctiveSignHasTeachersController < ApplicationController
  before_action :set_distinctive_sign_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /distinctive_sign_has_teachers
  # GET /distinctive_sign_has_teachers.json
  def index
    @distinctive_sign_has_teachers = DistinctiveSignHasTeacher.all
  end

  # GET /distinctive_sign_has_teachers/1
  # GET /distinctive_sign_has_teachers/1.json
  def show
  end

  # GET /distinctive_sign_has_teachers/new
  def new
    @distinctive_sign_has_teacher = DistinctiveSignHasTeacher.new
  end

  # GET /distinctive_sign_has_teachers/1/edit
  def edit
  end

  # POST /distinctive_sign_has_teachers
  # POST /distinctive_sign_has_teachers.json
  def create
    @distinctive_sign_has_teacher = DistinctiveSignHasTeacher.new(distinctive_sign_has_teacher_params)

    respond_to do |format|
      if @distinctive_sign_has_teacher.save
        format.html { redirect_to @distinctive_sign_has_teacher, notice: 'Distinctive sign has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @distinctive_sign_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @distinctive_sign_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distinctive_sign_has_teachers/1
  # PATCH/PUT /distinctive_sign_has_teachers/1.json
  def update
    respond_to do |format|
      if @distinctive_sign_has_teacher.update(distinctive_sign_has_teacher_params)
        format.html { redirect_to @distinctive_sign_has_teacher, notice: 'Distinctive sign has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @distinctive_sign_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @distinctive_sign_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distinctive_sign_has_teachers/1
  # DELETE /distinctive_sign_has_teachers/1.json
  def destroy
    @distinctive_sign_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to distinctive_sign_has_teachers_url, notice: 'Distinctive sign has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distinctive_sign_has_teacher
      @distinctive_sign_has_teacher = DistinctiveSignHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distinctive_sign_has_teacher_params
      params.require(:distinctive_sign_has_teacher).permit(:status, :distinctive_sign_id, :teacher_id)
    end
end
