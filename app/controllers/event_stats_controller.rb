class EventStatsController < ApplicationController
  before_action :set_event_stat, only: [:show, :edit, :update, :destroy]

  # GET /event_stats
  # GET /event_stats.json
  def index
    @event_stats = EventStat.all
  end

  # GET /event_stats/1
  # GET /event_stats/1.json
  def show
  end

  # GET /event_stats/new
  def new
    @event_stat = EventStat.new
  end

  # GET /event_stats/1/edit
  def edit
  end

  # POST /event_stats
  # POST /event_stats.json
  def create
    @event_stat = EventStat.new(event_stat_params)

    respond_to do |format|
      if @event_stat.save
        format.html { redirect_to @event_stat, notice: 'Event stat was successfully created.' }
        format.json { render :show, status: :created, location: @event_stat }
      else
        format.html { render :new }
        format.json { render json: @event_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_stats/1
  # PATCH/PUT /event_stats/1.json
  def update
    respond_to do |format|
      if @event_stat.update(event_stat_params)
        format.html { redirect_to @event_stat, notice: 'Event stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_stat }
      else
        format.html { render :edit }
        format.json { render json: @event_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_stats/1
  # DELETE /event_stats/1.json
  def destroy
    @event_stat.destroy
    respond_to do |format|
      format.html { redirect_to event_stats_url, notice: 'Event stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_stat
      @event_stat = EventStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_stat_params
      params.require(:event_stat).permit(:name, :event_date, :icc_event_id, :orateur, :moderateur, :conducteur, :nb_nonstar_h, :nb_nonstar_f, :nb_star_h, :nb_star_f, :nb_enfants)
    end
end
