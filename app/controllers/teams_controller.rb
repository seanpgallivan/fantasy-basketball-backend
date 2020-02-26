class TeamsController < ApplicationController

  def show 
    team = Team.find(params[:id])
    render :json => team
  end 

  def create 
    team = Team.create(team_params)
    render :json => team
  end 

  def update
    team = Team.find(params[:id])
    team.update(team_params)
    render :json => team
  end 

  private 

  def team_params
    params.require(:team).permit(:name, :roster, :user_id, :league_id, queue: [])
  end 

end