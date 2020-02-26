class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :teams

  def teams
    self.object.teams.map { |team| {id: team.id, name: team.name, roster: team.roster, user_id: team.user.id, user_name: team.user.username}}
  end

end
