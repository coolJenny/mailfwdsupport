require 'net/http'
require 'net/ftp'
require 'uri'
class AdminsController < ApplicationController  
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def main_admin
    @keywords = Keyword.where('user_id' => current_user.id)
    @num_recipients = Greeting.where('user_id' => current_user.id).count
  end

  def edit_admin
    @keywordgroups = Keywordgroup.where('user_id' => current_user.id)    
    if !@keywordgroups.nil?

    end

    @keywords = Keyword.where('user_id' => current_user.id)
    @keywords_num = Keyword.where('user_id' => current_user.id).count
    @greetings = Greeting.where('user_id' => current_user.id)
    @admin = Admin.new
  end

  def recipients
    
  end

  # GET /admins
  # GET /admins.json
  def index
    @admins = Admin.all
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
    @admin_keywords = Admin.where('user_id' => current_user.id)
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    if params[:action_info] == 'recipient'
      @greeting = Greeting.new(admin_params)
      @greeting.name = params[:name]
      @greeting.email = params[:email]
      @greeting.cc_state = params[:cc_state]
      @greeting.user_id = current_user.id
      if @greeting.save
        keywordgroup = Keywordgroup.find_or_create_by(greeting_id: @greeting.id)
        @greeting.keywordgroups << keywordgroup
        flash[:notice] = "Recipient was successfully created!"
        redirect_back(fallback_location: root_path)
      else
        flash[:error] = "Failed creating recipient."
        redirect_back(fallback_location: root_path)
      end
    end

    if params[:action_info] == 'keyword'
      @keyword = Keyword.new(admin_params)
      key_count = Keyword.where('user_id' => current_user.id).where('keywordgroup_id' => keywordgroup_id).count
      if key_count == 4
        flash[:error] = "Can't create a new keyword. Limited the number of keywords."
        redirect_back(fallback_location: root_path)
      else
        @keyword.user_id = current_user.id

        if @keyword.save
          keywordgroup = Keywordgroup.find_or_create_by(keyword_id: @keyword.id)
          @keyword.keywordgroups << keywordgroup
          flash[:notice] = "Keyword was successfully created!"
          redirect_back(fallback_location: root_path)
        else
          flash[:error] = "Failed creating keyword."
          redirect_back(fallback_location: root_path)
        end
      end
    end
    # @admin = Admin.new(admin_params)

    # respond_to do |format|
    #   if @admin.save
    #     format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
    #     format.json { render :show, status: :created, location: @admin }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @admin.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.fetch(:admin, {})
    end
end
