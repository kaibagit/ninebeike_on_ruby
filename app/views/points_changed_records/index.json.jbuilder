json.array!(@points_changed_records) do |points_changed_record|
  json.extract! points_changed_record, :id, :mid, :changed_before, :chaged_points, :changed_after
  json.url points_changed_record_url(points_changed_record, format: :json)
end
