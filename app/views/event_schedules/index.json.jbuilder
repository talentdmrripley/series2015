json.array!(@event_schedules) do |event_schedule|
  json.extract! event_schedule, :id, :objectID, :event_date, :event_site, :event_visitor, :event_home
  json.url event_schedule_url(event_schedule, format: :json)
end
