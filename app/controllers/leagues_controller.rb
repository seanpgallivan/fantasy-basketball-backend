class LeaguesController < ApplicationController

  def show 
    league = League.find(params[:id])
    render :json => league
  end 

  def create 
    league = League.create(league_params)
    render :json => league
  end 

  def update
    league = League.find(params[:id])
    league.update(league_params)
    render :json => league
  end 

  private 

  def league_params
    params.require(:league).permit(
      :name, 
      :max_teams, 
      :draft_start, 
      :round_duration, 
      :roster_guards, 
      :roster_forwards,
      :roster_centers,
      :roster_utility,
      :roster_bench,
      :user_id,
      seed_order: []
      )
  end 

end