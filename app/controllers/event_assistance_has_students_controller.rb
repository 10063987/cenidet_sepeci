class EventAssistanceHasStudentsController < ApplicationController
  before_action :set_event_assistance_has_student, only: [:show, :edit, :update, :destroy]

  # GET /event_assistance_has_students
  # GET /event_assistance_has_students.json
  def index
    @event_assistance_has_students = EventAssistanceHasStudent.all
  end

  # GET /event_assistance_has_students/1
  # GET /event_assistance_has_students/1.json
  def show
  end

  # GET /event_assistance_has_students/new
  def new
    @event_assistance_has_student = EventAssistanceHasStudent.new
  end

  # GET /event_assistance_has_students/1/edit
  def edit
  end

  # POST /event_assistance_has_students
  # POST /event_assistance_has_students.json
  def create
    @event_assistance_has_student = EventAssistanceHasStudent.new(event_assistance_has_student_params)

    respond_to do |format|
      if @event_assistance_has_student.save
        format.html { redirect_to @event_assistance_has_student, notice: 'Event assistance has student was successfully created.' }
        format.json { render :show, status: :created, location: @event_assistance_has_student }
      else
        format.html { render :new }
        format.json { render json: @event_assistance_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_assistance_has_students/1
  # PATCH/PUT /event_assistance_has_students/1.json
  def update
    respond_to do |format|
      if @event_assistance_has_student.update(event_assistance_has_student_params)
        format.html { redirect_to @event_assistance_has_student, notice: 'Event assistance has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_assistance_has_student }
      else
        format.html { render :edit }
        format.json { render json: @event_assistance_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_assistance_has_students/1
  # DELETE /event_assistance_has_students/1.json
  def destroy
    @event_assistance_has_student.destroy
    respond_to do |format|
      format.html { redirect_to event_assistance_has_students_url, notice: 'Event assistance has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_assistance_has_student
      @event_assistance_has_student = EventAssistanceHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_assistance_has_student_params
      params.require(:event_assistance_has_student).permit(:status, :event_assistance_id, :student_id)
    end
end
