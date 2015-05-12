json.array!(@vstarters) do |vstarter|
  json.extract! vstarter, :id, :eventschedule_ID, :team, :firstlast, :inning_entered, :player_position, :visitor_shortname, :notes
  json.url vstarter_url(vstarter, format: :json)
end
