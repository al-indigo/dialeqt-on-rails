class ParadigmsController < ApplicationController
  before_action :set_paradigm, only: [:show, :edit, :update, :destroy]

  # GET /paradigms
  # GET /paradigms.json
  def index
    @paradigms = Paradigm.all
  end

  # GET /paradigms/1
  # GET /paradigms/1.json
  def show
  end

  # GET /paradigms/new
  def new
    @paradigm = Paradigm.new
  end

  # GET /paradigms/1/edit
  def edit
  end

  # POST /paradigms
  # POST /paradigms.json
  def create
    @paradigm = Paradigm.new(paradigm_params)

    respond_to do |format|
      if @paradigm.save
        format.html { redirect_to @paradigm, notice: 'Paradigm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paradigm }
      else
        format.html { render action: 'new' }
        format.json { render json: @paradigm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paradigms/1
  # PATCH/PUT /paradigms/1.json
  def update
    respond_to do |format|
      if @paradigm.update(paradigm_params)
        format.html { redirect_to @paradigm, notice: 'Paradigm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paradigm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paradigms/1
  # DELETE /paradigms/1.json
  def destroy
    @paradigm.destroy
    respond_to do |format|
      format.html { redirect_to paradigms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paradigm
      @paradigm = Paradigm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paradigm_params
      params.require(:paradigm).permit(:word, :transcription, :translation, :word_id)
    end
end
