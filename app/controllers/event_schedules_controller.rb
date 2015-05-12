class EventSchedulesController < ApplicationController
  before_action :set_event_schedule, only: [:show, :edit, :update, :destroy]

  # GET /event_schedules
  # GET /event_schedules.json
  def index
    @event_schedules = EventSchedule.all
  end

  # GET /event_schedules/1
  # GET /event_schedules/1.json
  def show
  end

  # GET /event_schedules/new
  def new
    @event_schedule = EventSchedule.new
  end

  # GET /event_schedules/1/edit
  def edit
  end

  # POST /event_schedules
  # POST /event_schedules.json
  def create
    @event_schedule = EventSchedule.new(event_schedule_params)

    respond_to do |format|
      if @event_schedule.save
        format.html { redirect_to @event_schedule, notice: 'Event schedule was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_schedule }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_schedules/1
  # PATCH/PUT /event_schedules/1.json
  def update
    respond_to do |format|
      if @event_schedule.update(event_schedule_params)
        format.html { redirect_to @event_schedule, notice: 'Event schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_schedules/1
  # DELETE /event_schedules/1.json
  def destroy
    @event_schedule.destroy
    respond_to do |format|
      format.html { redirect_to event_schedules_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_schedule
      @event_schedule = EventSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_schedule_params
      params.require(:event_schedule).permit(:objectID, :event_date, :event_site, :event_visitor, :event_home)
    end
end
