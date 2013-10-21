class WordSoundsController < ApplicationController
  before_action :set_word_sound, only: [:show, :edit, :update, :destroy]

  # GET /word_sounds
  # GET /word_sounds.json
  def index
    @word_sounds = WordSound.all
  end

  # GET /word_sounds/1
  # GET /word_sounds/1.json
  def show
  end

  # GET /word_sounds/new
  def new
    @word_sound = WordSound.new
  end

  # GET /word_sounds/1/edit
  def edit
  end

  # POST /word_sounds
  # POST /word_sounds.json
  def create
    @word_sound = WordSound.new(word_sound_params[:word_sound])

    respond_to do |format|
      if @word_sound.save
        format.html { redirect_to @word_sound, notice: 'Word sound was successfully created.' }
        format.json { render action: 'show', status: :created, location: @word_sound }
      else
        format.html { render action: 'new' }
        format.json { render json: @word_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_sounds/1
  # PATCH/PUT /word_sounds/1.json
  def update
    respond_to do |format|
      if @word_sound.update(word_sound_params)
        format.html { redirect_to @word_sound, notice: 'Word sound was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @word_sound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_sounds/1
  # DELETE /word_sounds/1.json
  def destroy
    @word_sound.destroy
    respond_to do |format|
      format.html { redirect_to word_sounds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_sound
      @word_sound = WordSound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_sound_params
#      params.require(:word_sound).permit(:word_id, :description)
      params.permit!
    end
end
