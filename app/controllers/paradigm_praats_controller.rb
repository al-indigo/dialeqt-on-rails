class ParadigmPraatsController < ApplicationController
  before_action :set_paradigm_praat, only: [:show, :edit, :update, :destroy]

  # GET /paradigm_praats
  # GET /paradigm_praats.json
  def index
    @paradigm_praats = ParadigmPraat.all
  end

  # GET /paradigm_praats/1
  # GET /paradigm_praats/1.json
  def show
  end

  # GET /paradigm_praats/new
  def new
    @paradigm_praat = ParadigmPraat.new
  end

  # GET /paradigm_praats/1/edit
  def edit
  end

  # POST /paradigm_praats
  # POST /paradigm_praats.json
  def create
    @paradigm_praat = ParadigmPraat.new(paradigm_praat_params[:paradigm_praat])

    respond_to do |format|
      if @paradigm_praat.save
        format.html { redirect_to @paradigm_praat, notice: 'Paradigm praat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paradigm_praat }
      else
        format.html { render action: 'new' }
        format.json { render json: @paradigm_praat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paradigm_praats/1
  # PATCH/PUT /paradigm_praats/1.json
  def update
    respond_to do |format|
      if @paradigm_praat.update(paradigm_praat_params)
        format.html { redirect_to @paradigm_praat, notice: 'Paradigm praat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paradigm_praat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paradigm_praats/1
  # DELETE /paradigm_praats/1.json
  def destroy
    @paradigm_praat.destroy
    respond_to do |format|
      format.html { redirect_to paradigm_praats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paradigm_praat
      @paradigm_praat = ParadigmPraat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paradigm_praat_params
#      params.require(:paradigm_praat).permit(:paradigm_id, :description)
      params.permit!
    end
end
