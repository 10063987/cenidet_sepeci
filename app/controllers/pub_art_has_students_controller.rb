class PubArtHasStudentsController < ApplicationController
  before_action :set_pub_art_has_student, only: [:show, :edit, :update, :destroy]

  # GET /pub_art_has_students
  # GET /pub_art_has_students.json
  def index
    @pub_art_has_students = PubArtHasStudent.all
  end

  # GET /pub_art_has_students/1
  # GET /pub_art_has_students/1.json
  def show
  end

  # GET /pub_art_has_students/new
  def new
    @pub_art_has_student = PubArtHasStudent.new
  end

  # GET /pub_art_has_students/1/edit
  def edit
  end

  # POST /pub_art_has_students
  # POST /pub_art_has_students.json
  def create
    @pub_art_has_student = PubArtHasStudent.new(pub_art_has_student_params)

    respond_to do |format|
      if @pub_art_has_student.save
        format.html { redirect_to @pub_art_has_student, notice: 'Pub art has student was successfully created.' }
        format.json { render :show, status: :created, location: @pub_art_has_student }
      else
        format.html { render :new }
        format.json { render json: @pub_art_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pub_art_has_students/1
  # PATCH/PUT /pub_art_has_students/1.json
  def update
    respond_to do |format|
      if @pub_art_has_student.update(pub_art_has_student_params)
        format.html { redirect_to @pub_art_has_student, notice: 'Pub art has student was successfully updated.' }
        format.json { render :show, status: :ok, location: @pub_art_has_student }
      else
        format.html { render :edit }
        format.json { render json: @pub_art_has_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pub_art_has_students/1
  # DELETE /pub_art_has_students/1.json
  def destroy
    @pub_art_has_student.destroy
    respond_to do |format|
      format.html { redirect_to pub_art_has_students_url, notice: 'Pub art has student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pub_art_has_student
      @pub_art_has_student = PubArtHasStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pub_art_has_student_params
      params.require(:pub_art_has_student).permit(:status, :pub_art_id, :student_id)
    end
end
