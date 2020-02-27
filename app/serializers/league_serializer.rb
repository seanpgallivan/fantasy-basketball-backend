class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :draft_start, :round_duration, :roster_guards, :roster_forwards, :roster_centers, :roster_utility, :roster_bench, :user_id, :seed_order, :teams   

  def teams
    league_teams = self.object.teams.sort_by {|team| team.created_at}
    league_teams.map { |team| {id: team.id, name: team.name, roster: team.roster, user_id: team.user.id, user_name: team.user.username}}
  end

end
