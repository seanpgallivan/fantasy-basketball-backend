class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :roster, :queue
end