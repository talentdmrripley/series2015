class VstartersController < ApplicationController
  before_action :set_vstarter, only: [:show, :edit, :update, :destroy]

  # GET /vstarters
  # GET /vstarters.json
  def index
    @vstarters = Vstarter.all
  end

  # GET /vstarters/1
  # GET /vstarters/1.json
  def show
  end

  # GET /vstarters/new
  def new
    @vstarter = Vstarter.new
  end

  # GET /vstarters/1/edit
  def edit
  end

  # POST /vstarters
  # POST /vstarters.json
  def create
    @vstarter = Vstarter.new(vstarter_params)

    respond_to do |format|
      if @vstarter.save
        format.html { redirect_to @vstarter, notice: 'Vstarter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vstarter }
      else
        format.html { render action: 'new' }
        format.json { render json: @vstarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vstarters/1
  # PATCH/PUT /vstarters/1.json
  def update
    respond_to do |format|
      if @vstarter.update(vstarter_params)
        format.html { redirect_to @vstarter, notice: 'Vstarter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vstarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vstarters/1
  # DELETE /vstarters/1.json
  def destroy
    @vstarter.destroy
    respond_to do |format|
      format.html { redirect_to vstarters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vstarter
      @vstarter = Vstarter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vstarter_params
      params.require(:vstarter).permit(:eventschedule_ID, :team, :firstlast, :inning_entered, :player_position, :visitor_shortname, :notes)
    end
end
