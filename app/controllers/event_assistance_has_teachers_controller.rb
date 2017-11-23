class EventAssistanceHasTeachersController < ApplicationController
  before_action :set_event_assistance_has_teacher, only: [:show, :edit, :update, :destroy]

  # GET /event_assistance_has_teachers
  # GET /event_assistance_has_teachers.json
  def index
    @event_assistance_has_teachers = EventAssistanceHasTeacher.all
  end

  # GET /event_assistance_has_teachers/1
  # GET /event_assistance_has_teachers/1.json
  def show
  end

  # GET /event_assistance_has_teachers/new
  def new
    @event_assistance_has_teacher = EventAssistanceHasTeacher.new
  end

  # GET /event_assistance_has_teachers/1/edit
  def edit
  end

  # POST /event_assistance_has_teachers
  # POST /event_assistance_has_teachers.json
  def create
    @event_assistance_has_teacher = EventAssistanceHasTeacher.new(event_assistance_has_teacher_params)

    respond_to do |format|
      if @event_assistance_has_teacher.save
        format.html { redirect_to @event_assistance_has_teacher, notice: 'Event assistance has teacher was successfully created.' }
        format.json { render :show, status: :created, location: @event_assistance_has_teacher }
      else
        format.html { render :new }
        format.json { render json: @event_assistance_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_assistance_has_teachers/1
  # PATCH/PUT /event_assistance_has_teachers/1.json
  def update
    respond_to do |format|
      if @event_assistance_has_teacher.update(event_assistance_has_teacher_params)
        format.html { redirect_to @event_assistance_has_teacher, notice: 'Event assistance has teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_assistance_has_teacher }
      else
        format.html { render :edit }
        format.json { render json: @event_assistance_has_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_assistance_has_teachers/1
  # DELETE /event_assistance_has_teachers/1.json
  def destroy
    @event_assistance_has_teacher.destroy
    respond_to do |format|
      format.html { redirect_to event_assistance_has_teachers_url, notice: 'Event assistance has teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_assistance_has_teacher
      @event_assistance_has_teacher = EventAssistanceHasTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_assistance_has_teacher_params
      params.require(:event_assistance_has_teacher).permit(:status, :event_assistance_id, :teacher_id)
    end
end
