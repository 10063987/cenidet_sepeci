class TeacherTypesController < ApplicationController
  before_action :set_teacher_type, only: [:show, :edit, :update, :destroy]

  # GET /teacher_types
  # GET /teacher_types.json
  def index
    @teacher_types = TeacherType.all
  end

  # GET /teacher_types/1
  # GET /teacher_types/1.json
  def show
  end

  # GET /teacher_types/new
  def new
    @teacher_type = TeacherType.new
  end

  # GET /teacher_types/1/edit
  def edit
  end

  # POST /teacher_types
  # POST /teacher_types.json
  def create
    @teacher_type = TeacherType.new(teacher_type_params)

    respond_to do |format|
      if @teacher_type.save
        format.html { redirect_to @teacher_type, notice: 'Teacher type was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_type }
      else
        format.html { render :new }
        format.json { render json: @teacher_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_types/1
  # PATCH/PUT /teacher_types/1.json
  def update
    respond_to do |format|
      if @teacher_type.update(teacher_type_params)
        format.html { redirect_to @teacher_type, notice: 'Teacher type was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_type }
      else
        format.html { render :edit }
        format.json { render json: @teacher_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_types/1
  # DELETE /teacher_types/1.json
  def destroy
    @teacher_type.destroy
    respond_to do |format|
      format.html { redirect_to teacher_types_url, notice: 'Teacher type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_type
      @teacher_type = TeacherType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_type_params
      params.require(:teacher_type).permit(:type)
    end
end
