class KeywordlistsController < ApplicationController
  before_action :set_keywordlist, only: [:show, :edit, :update, :destroy]

  # GET /keywordlists
  # GET /keywordlists.json
  def index
    @keywordlists = Keywordlist.all
  end

  # GET /keywordlists/1
  # GET /keywordlists/1.json
  def show
  end

  # GET /keywordlists/new
  def new
    @keywordlist = Keywordlist.new
  end

  # GET /keywordlists/1/edit
  def edit
  end

  # POST /keywordlists
  # POST /keywordlists.json
  def create
    @keywordlist = Keywordlist.new(keywordlist_params)

    respond_to do |format|
      if @keywordlist.save
        format.html { redirect_to @keywordlist, notice: 'Keywordlist was successfully created.' }
        format.json { render :show, status: :created, location: @keywordlist }
      else
        format.html { render :new }
        format.json { render json: @keywordlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keywordlists/1
  # PATCH/PUT /keywordlists/1.json
  def update
    respond_to do |format|
      if @keywordlist.update(keywordlist_params)
        format.html { redirect_to @keywordlist, notice: 'Keywordlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @keywordlist }
      else
        format.html { render :edit }
        format.json { render json: @keywordlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keywordlists/1
  # DELETE /keywordlists/1.json
  def destroy
    @keywordlist.destroy
    respond_to do |format|
      format.html { redirect_to keywordlists_url, notice: 'Keywordlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keywordlist
      @keywordlist = Keywordlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keywordlist_params
      params.require(:keywordlist).permit(:user_id, :keyword_id, :greeting_id)
    end
end
