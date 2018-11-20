class AnbridgesController < ApplicationController
  layout 'anbridges.html.haml'
  before_action :set_anbridge, only: [:show, :edit, :update, :destroy]

  # GET /anbridges
  # GET /anbridges.json
  def index;end

  # GET /anbridges/1
  # GET /anbridges/1.json
  def show
  end

  # GET /anbridges/new
  def new
    @anbridge = Anbridge.new
  end

  # GET /anbridges/1/edit
  def edit
  end

  # POST /anbridges
  # POST /anbridges.json
  def create
    @anbridge = Anbridge.new(anbridge_params)

    respond_to do |format|
      if @anbridge.save
        format.html { redirect_to @anbridge, notice: 'Anbridge was successfully created.' }
        format.json { render :show, status: :created, location: @anbridge }
      else
        format.html { render :new }
        format.json { render json: @anbridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anbridges/1
  # PATCH/PUT /anbridges/1.json
  def update
    respond_to do |format|
      if @anbridge.update(anbridge_params)
        format.html { redirect_to @anbridge, notice: 'Anbridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @anbridge }
      else
        format.html { render :edit }
        format.json { render json: @anbridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anbridges/1
  # DELETE /anbridges/1.json
  def destroy
    @anbridge.destroy
    respond_to do |format|
      format.html { redirect_to anbridges_url, notice: 'Anbridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anbridge
      @anbridge = Anbridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anbridge_params
      params.fetch(:anbridge, {})
    end
end
