class TutorialCommitteesController < ApplicationController
  before_action :set_tutorial_committee, only: [:show, :edit, :update, :destroy]

  # GET /tutorial_committees
  # GET /tutorial_committees.json
  def index
    @tutorial_committees = TutorialCommittee.all
  end

  # GET /tutorial_committees/1
  # GET /tutorial_committees/1.json
  def show
  end

  # GET /tutorial_committees/new
  def new
    @tutorial_committee = TutorialCommittee.new
  end

  # GET /tutorial_committees/1/edit
  def edit
  end

  # POST /tutorial_committees
  # POST /tutorial_committees.json
  def create
    @tutorial_committee = TutorialCommittee.new(tutorial_committee_params)

    respond_to do |format|
      if @tutorial_committee.save
        format.html { redirect_to @tutorial_committee, notice: 'Tutorial committee was successfully created.' }
        format.json { render :show, status: :created, location: @tutorial_committee }
      else
        format.html { render :new }
        format.json { render json: @tutorial_committee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_committees/1
  # PATCH/PUT /tutorial_committees/1.json
  def update
    respond_to do |format|
      if @tutorial_committee.update(tutorial_committee_params)
        format.html { redirect_to @tutorial_committee, notice: 'Tutorial committee was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial_committee }
      else
        format.html { render :edit }
        format.json { render json: @tutorial_committee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_committees/1
  # DELETE /tutorial_committees/1.json
  def destroy
    @tutorial_committee.destroy
    respond_to do |format|
      format.html { redirect_to tutorial_committees_url, notice: 'Tutorial committee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_committee
      @tutorial_committee = TutorialCommittee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_committee_params
      params.require(:tutorial_committee).permit(:name, :period, :teacher_type_id, :student_id)
    end
end
