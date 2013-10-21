class ParadigmSoundsController < ApplicationController
  before_action :set_paradigm_sound, only: [:show, :edit, :update, :destroy]

  # GET /paradigm_sounds
  # GET /paradigm_sounds.json
  def index
    @paradigm_sounds = ParadigmSound.all
  end

  # GET /paradigm_sounds/1
  # GET /paradigm_sounds/1.json
  def show
  end

  # GET /paradigm_sounds/new
  def new
    @paradigm_sound = ParadigmSound.new
  end

  # GET /paradigm_sounds/1/edit
  def edit
  end

  # POST /paradigm_sounds
  # POST /paradigm_sounds.json
  def create
    @paradigm_sound = ParadigmSound.new(paradigm_sound_params[:paradigm_sound])

    respond_to do |format|
      if @paradigm_sound.save
        format.html { redirect_to @paradigm_sound, notice: 'Paradigm sound was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paradigm_sound }
      else
        format.html { render action: 'new' }
        format.json { render json: @paradigm_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paradigm_sounds/1
  # PATCH/PUT /paradigm_sounds/1.json
  def update
    respond_to do |format|
      if @paradigm_sound.update(paradigm_sound_params)
        format.html { redirect_to @paradigm_sound, notice: 'Paradigm sound was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paradigm_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paradigm_sounds/1
  # DELETE /paradigm_sounds/1.json
  def destroy
    @paradigm_sound.destroy
    respond_to do |format|
      format.html { redirect_to paradigm_sounds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paradigm_sound
      @paradigm_sound = ParadigmSound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paradigm_sound_params
#      params.require(:paradigm_sound).permit(:paradigm_id, :description)
      params.permit!
    end
end
