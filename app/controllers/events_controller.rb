class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index

    if params[:tag]
      @events = Event.where(tags: params[:tag]).sort_by {|event| -event.posts.count}
      @tag = params[:tag]

    elsif params[:search]
      # @events = Event.search(params[:search]).order("created_at DESC")
      @events = Event.search(params[:search]).sort_by {|event| -event.posts.count}
    else
      # @events = Event.order("posts_count DESC")
      @events = Event.all.sort_by {|event| -event.posts.count}
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    if @event != nil
      @posts = @event.posts.sort_by {|p| -p.vote_count}
    end
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end
  
  # POST /events
  # POST /events.json
  def create
    success = false
    notice = ""
    if current_user != nil
      @event = Event.new(event_params)
      if @event.save
        success = true
        current_user.organized_events << @event
        notice = "Event was successfully created"
      end
    end
    
    respond_to do |format|
      if success == true
        format.html { redirect_to @event, notice: "#{notice}" }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :tags)
    end
end
