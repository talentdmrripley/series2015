json.array!(@hstarters) do |hstarter|
  json.extract! hstarter, :id, :eventschedule_ID, :team, :firstlast, :inning_entered, :player_position, :visitor_shortname, :notes
  json.url hstarter_url(hstarter, format: :json)
end
