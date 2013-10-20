class PraatsController < ApplicationController
  before_action :set_praat, only: [:show, :edit, :update, :destroy]

  # GET /praats
  # GET /praats.json
  def index
    @praats = Praat.all
  end

  # GET /praats/1
  # GET /praats/1.json
  def show
  end

  # GET /praats/new
  def new
    @praat = Praat.new
  end

  # GET /praats/1/edit
  def edit
  end

  # POST /praats
  # POST /praats.json
  def create
    @praat = Praat.new(praat_params)

    respond_to do |format|
      if @praat.save
        format.html { redirect_to @praat, notice: 'Praat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @praat }
      else
        format.html { render action: 'new' }
        format.json { render json: @praat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /praats/1
  # PATCH/PUT /praats/1.json
  def update
    respond_to do |format|
      if @praat.update(praat_params)
        format.html { redirect_to @praat, notice: 'Praat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @praat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /praats/1
  # DELETE /praats/1.json
  def destroy
    @praat.destroy
    respond_to do |format|
      format.html { redirect_to praats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_praat
      @praat = Praat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def praat_params
#      params.require(:praat).permit(:description, :praatable_id, :praataable_type)
      params.permit!
    end
end
