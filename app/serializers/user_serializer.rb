class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :leagues

  def leagues
    leagues = self.object.leagues.map.sort_by {|league| league.id}
    leagues.map {|league| 
      teams = league.teams.sort_by {|team| team.id}
      teams = teams.map {|team|
        if self.object.id == team.user.id
          {id: team.id, name: team.name, queue: team.queue, roster: team.roster, user_id: team.user.id, user_name: team.user.username}
        else
          {id: team.id, name: team.name, roster: team.roster, user_id: team.user.id, user_name: team.user.username}
        end
      }
      {
        id: league.id, 
        name: league.name, 
        max_teams: league.max_teams, 
        draft_start: league.draft_start, 
        round_duration: league.round_duration, 
        rost_g: league.roster_guards, 
        rost_f: league.roster_forwards, 
        rost_c: league.roster_centers, 
        rost_u: league.roster_utility, 
        rost_b: league.roster_bench, 
        max_players: league.roster_guards + league.roster_forwards + league.roster_centers + league.roster_utility + league.roster_bench, 
        user_id: league.user_id, 
        seed_order: league.seed_order, 
        teams: teams
      }
    }
  end
end