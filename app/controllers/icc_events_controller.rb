class IccEventsController < ApplicationController
  before_action :set_icc_event, only: [:show, :edit, :update, :destroy]

  # GET /icc_events
  # GET /icc_events.json
  def index
    @icc_events = IccEvent.all
  end

  # GET /icc_events/1
  # GET /icc_events/1.json
  def show
  end

  # GET /icc_events/new
  def new
    @icc_event = IccEvent.new
  end

  # GET /icc_events/1/edit
  def edit
  end

  # POST /icc_events
  # POST /icc_events.json
  def create
    @icc_event = IccEvent.new(icc_event_params)

    respond_to do |format|
      if @icc_event.save
        format.html { redirect_to @icc_event, notice: 'Icc event was successfully created.' }
        format.json { render :show, status: :created, location: @icc_event }
      else
        format.html { render :new }
        format.json { render json: @icc_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icc_events/1
  # PATCH/PUT /icc_events/1.json
  def update
    respond_to do |format|
      if @icc_event.update(icc_event_params)
        format.html { redirect_to @icc_event, notice: 'Icc event was successfully updated.' }
        format.json { render :show, status: :ok, location: @icc_event }
      else
        format.html { render :edit }
        format.json { render json: @icc_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icc_events/1
  # DELETE /icc_events/1.json
  def destroy
    @icc_event.destroy
    respond_to do |format|
      format.html { redirect_to icc_events_url, notice: 'Icc event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icc_event
      @icc_event = IccEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icc_event_params
      params.require(:icc_event).permit(:name)
    end
end
