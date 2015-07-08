json.array!(@members) do |member|
  json.extract! member, :id, :mobile, :points
  json.url member_url(member, format: :json)
end
