class ScoreboardsController < ApplicationController
  before_action :set_scoreboard, only: [:show, :edit, :update, :destroy]

  # GET /scoreboards
  def index
    @scoreboards = Scoreboard.all
  end

  # GET /scoreboards/1
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
  def create
    @scoreboard = Scoreboard.new(scoreboard_params)

    if @scoreboard.save
      redirect_to @scoreboard, notice: 'Scoreboard was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /scoreboards/1
  def update
    if @scoreboard.update(scoreboard_params)
      redirect_to @scoreboard, notice: 'Scoreboard was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /scoreboards/1
  def destroy
    @scoreboard.destroy
    redirect_to scoreboards_url, notice: 'Scoreboard was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoreboard
      @scoreboard = Scoreboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scoreboard_params
      params.require(:scoreboard).permit(:name_of_activity, :name_of_scoreboard, :user_id)
    end
end
