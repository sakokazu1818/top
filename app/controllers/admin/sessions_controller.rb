class Admin::SessionsController < ApplicationController
  before_action :set_admin_session, only: [:show, :edit, :update, :destroy]

  # GET /admin/sessions
  # GET /admin/sessions.json
  def index
    @admin_sessions = Admin::Session.all
  end

  # GET /admin/sessions/1
  # GET /admin/sessions/1.json
  def show
  end

  # GET /admin/sessions/new
  def new
    @admin_session = Admin::Session.new
  end

  # GET /admin/sessions/1/edit
  def edit
  end

  # POST /admin/sessions
  # POST /admin/sessions.json
  def create
    @admin_session = Admin::Session.new(admin_session_params)

    respond_to do |format|
      if @admin_session.save
        format.html { redirect_to @admin_session, notice: 'Session was successfully created.' }
        format.json { render :show, status: :created, location: @admin_session }
      else
        format.html { render :new }
        format.json { render json: @admin_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/sessions/1
  # PATCH/PUT /admin/sessions/1.json
  def update
    respond_to do |format|
      if @admin_session.update(admin_session_params)
        format.html { redirect_to @admin_session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_session }
      else
        format.html { render :edit }
        format.json { render json: @admin_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sessions/1
  # DELETE /admin/sessions/1.json
  def destroy
    @admin_session.destroy
    respond_to do |format|
      format.html { redirect_to admin_sessions_url, notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_session
      @admin_session = Admin::Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_session_params
      params.fetch(:admin_session, {})
    end
end
