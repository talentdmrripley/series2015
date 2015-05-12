class HstartersController < ApplicationController
  before_action :set_hstarter, only: [:show, :edit, :update, :destroy]

  # GET /hstarters
  # GET /hstarters.json
  def index
    @hstarters = Hstarter.all
  end

  # GET /hstarters/1
  # GET /hstarters/1.json
  def show
  end

  # GET /hstarters/new
  def new
    @hstarter = Hstarter.new
  end

  # GET /hstarters/1/edit
  def edit
  end

  # POST /hstarters
  # POST /hstarters.json
  def create
    @hstarter = Hstarter.new(hstarter_params)

    respond_to do |format|
      if @hstarter.save
        format.html { redirect_to @hstarter, notice: 'Hstarter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hstarter }
      else
        format.html { render action: 'new' }
        format.json { render json: @hstarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hstarters/1
  # PATCH/PUT /hstarters/1.json
  def update
    respond_to do |format|
      if @hstarter.update(hstarter_params)
        format.html { redirect_to @hstarter, notice: 'Hstarter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hstarter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hstarters/1
  # DELETE /hstarters/1.json
  def destroy
    @hstarter.destroy
    respond_to do |format|
      format.html { redirect_to hstarters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hstarter
      @hstarter = Hstarter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hstarter_params
      params.require(:hstarter).permit(:eventschedule_ID, :team, :firstlast, :inning_entered, :player_position, :visitor_shortname, :notes)
    end
end
