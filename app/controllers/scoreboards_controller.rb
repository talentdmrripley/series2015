class ScoreboardsController < ApplicationController
  before_action :set_scoreboard, only: [:show, :edit, :update, :destroy]

  # GET /scoreboards
  # GET /scoreboards.json
  def index
    @scoreboards = Scoreboard.all
  end

  # GET /scoreboards/1
  # GET /scoreboards/1.json
  def show
  end

  # GET /scoreboards/new
  def new
    @scoreboard = Scoreboard.new
  end

  # GET /scoreboards/1/edit
  def edit
  end

  # POST /scoreboards
  # POST /scoreboards.json
  def create
    @scoreboard = Scoreboard.new(scoreboard_params)

    respond_to do |format|
      if @scoreboard.save
        format.html { redirect_to @scoreboard, notice: 'Scoreboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scoreboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @scoreboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scoreboards/1
  # PATCH/PUT /scoreboards/1.json
  def update
    respond_to do |format|
      if @scoreboard.update(scoreboard_params)
        format.html { redirect_to @scoreboard, notice: 'Scoreboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scoreboard.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /scoreboards/1
  # DELETE /scoreboards/1.json
  def destroy
    @scoreboard.destroy
    respond_to do |format|
      format.html { redirect_to scoreboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoreboard
      @scoreboard = Scoreboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scoreboard_params
      params.require(:scoreboard).permit(:eventschedule_ID, :event_schedule_id, :title, :visitor, :home, :v1, :h1, :v2, :h2, :v3, :h3, :v4, :h4, :v5, :h5, :v6, :h6, :v7, :h7, :v8, :h8, :v9, :h9, :v10, :h10, :v11, :h11, :v12, :h12, :v13, :h13, :v14, :h14, :v15, :h15, :v16, :h16, :v17, :h17, :v18, :h18, :v19, :h19, :v20, :h20, :vruns, :hruns, :vhits, :hhits, :verrs, :herrs, :gamenotes)
    end
end
