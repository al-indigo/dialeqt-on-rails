class WordPraatsController < ApplicationController
  before_action :set_word_praat, only: [:show, :edit, :update, :destroy]

  # GET /word_praats
  # GET /word_praats.json
  def index
    @word_praats = WordPraat.all
  end

  # GET /word_praats/1
  # GET /word_praats/1.json
  def show
  end

  # GET /word_praats/new
  def new
    @word_praat = WordPraat.new
  end

  # GET /word_praats/1/edit
  def edit
  end

  # POST /word_praats
  # POST /word_praats.json
  def create
    @word_praat = WordPraat.new(word_praat_params[:word_praat])

    respond_to do |format|
      if @word_praat.save
        format.html { redirect_to @word_praat, notice: 'Word praat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @word_praat }
      else
        format.html { render action: 'new' }
        format.json { render json: @word_praat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_praats/1
  # PATCH/PUT /word_praats/1.json
  def update
    respond_to do |format|
      if @word_praat.update(word_praat_params)
        format.html { redirect_to @word_praat, notice: 'Word praat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @word_praat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_praats/1
  # DELETE /word_praats/1.json
  def destroy
    @word_praat.destroy
    respond_to do |format|
      format.html { redirect_to word_praats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_praat
      @word_praat = WordPraat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_praat_params
#      params.require(:word_praat).permit(:word_id, :description)
      params.permit!
    end
end
