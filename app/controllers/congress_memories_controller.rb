class CongressMemoriesController < ApplicationController
  before_action :set_congress_memory, only: [:show, :edit, :update, :destroy]

  # GET /congress_memories
  # GET /congress_memories.json
  def index
    @congress_memories = CongressMemory.all
  end

  # GET /congress_memories/1
  # GET /congress_memories/1.json
  def show
  end

  # GET /congress_memories/new
  def new
    @congress_memory = CongressMemory.new
  end

  # GET /congress_memories/1/edit
  def edit
  end

  # POST /congress_memories
  # POST /congress_memories.json
  def create
    @congress_memory = CongressMemory.new(congress_memory_params)

    respond_to do |format|
      if @congress_memory.save
        format.html { redirect_to @congress_memory, notice: 'Congress memory was successfully created.' }
        format.json { render :show, status: :created, location: @congress_memory }
      else
        format.html { render :new }
        format.json { render json: @congress_memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congress_memories/1
  # PATCH/PUT /congress_memories/1.json
  def update
    respond_to do |format|
      if @congress_memory.update(congress_memory_params)
        format.html { redirect_to @congress_memory, notice: 'Congress memory was successfully updated.' }
        format.json { render :show, status: :ok, location: @congress_memory }
      else
        format.html { render :edit }
        format.json { render json: @congress_memory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congress_memories/1
  # DELETE /congress_memories/1.json
  def destroy
    @congress_memory.destroy
    respond_to do |format|
      format.html { redirect_to congress_memories_url, notice: 'Congress memory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congress_memory
      @congress_memory = CongressMemory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congress_memory_params
      params.require(:congress_memory).permit(:memory_title, :start_page, :end_page, :year, :evidence, :message_id)
    end
end
