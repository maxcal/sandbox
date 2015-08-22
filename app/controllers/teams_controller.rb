class TeamsController < ApplicationController


  before_action :set_scoreboard, only: [:new, :create]
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @scoreboard = Scoreboard.eager_load(:teams).find(params[:scoreboard_id])
    @teams = @scoreboard.teams
  end

  # GET /teams/1
  def show
  end

  # GET /teams/new
  def new
    @team = @scoreboard.teams.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  def create
    @team = @scoreboard.teams.new(team_params)

    if @team.save
      redirect_to @team, notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      redirect_to @team, notice: 'Team was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
    redirect_to teams_url, notice: 'Team was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    def set_scoreboard
      @scoreboard = Scoreboard.find(params[:scoreboard_id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:team).permit(:name, :wins, :loss, :tie, :scoreboard_id)
    end
end
