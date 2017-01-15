json.array! @events do |event|
  date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'
  json.id event.id
  json.organization event.organization
  json.start event.start.strftime(date_format)
  json.end event.end.strftime(date_format)
  json.vehicle event.vehicle unless event.vehicle.blank?
  json.allDay event.all_day_event? ? true : false
  json.update_url event_path(event, method: :patch)
  json.edit_url edit_event_path(event)
end
