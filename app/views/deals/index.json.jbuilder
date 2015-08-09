json.array!(@deals) do |deal|
  json.extract! deal, :id, :title, :mid, :money, :beans, :status
  json.url deal_url(deal, format: :json)
end
