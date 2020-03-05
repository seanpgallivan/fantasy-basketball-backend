class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :roster, :queue, :league_id

  def league_id
    self.object.league.id
  end
end