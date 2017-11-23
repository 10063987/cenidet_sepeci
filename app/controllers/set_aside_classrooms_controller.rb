class SetAsideClassroomsController < ApplicationController
  before_action :set_set_aside_classroom, only: [:show, :edit, :update, :destroy]

  # GET /set_aside_classrooms
  # GET /set_aside_classrooms.json
  def index
    @set_aside_classrooms = SetAsideClassroom.all
  end

  # GET /set_aside_classrooms/1
  # GET /set_aside_classrooms/1.json
  def show
  end

  # GET /set_aside_classrooms/new
  def new
    @set_aside_classroom = SetAsideClassroom.new
  end

  # GET /set_aside_classrooms/1/edit
  def edit
  end

  # POST /set_aside_classrooms
  # POST /set_aside_classrooms.json
  def create
    @set_aside_classroom = SetAsideClassroom.new(set_aside_classroom_params)

    respond_to do |format|
      if @set_aside_classroom.save
        format.html { redirect_to @set_aside_classroom, notice: 'Set aside classroom was successfully created.' }
        format.json { render :show, status: :created, location: @set_aside_classroom }
      else
        format.html { render :new }
        format.json { render json: @set_aside_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_aside_classrooms/1
  # PATCH/PUT /set_aside_classrooms/1.json
  def update
    respond_to do |format|
      if @set_aside_classroom.update(set_aside_classroom_params)
        format.html { redirect_to @set_aside_classroom, notice: 'Set aside classroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_aside_classroom }
      else
        format.html { render :edit }
        format.json { render json: @set_aside_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_aside_classrooms/1
  # DELETE /set_aside_classrooms/1.json
  def destroy
    @set_aside_classroom.destroy
    respond_to do |format|
      format.html { redirect_to set_aside_classrooms_url, notice: 'Set aside classroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_aside_classroom
      @set_aside_classroom = SetAsideClassroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_aside_classroom_params
      params.require(:set_aside_classroom).permit(:classroom_id, :tutorial_committee_id, :student_id, :teacher_type_id, :period, :date, :start_time, :end_time)
    end
end
