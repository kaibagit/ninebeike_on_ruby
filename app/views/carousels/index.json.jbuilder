json.array!(@carousels) do |carousel|
  json.extract! carousel, :id, :image, :ulr
  json.url carousel_url(carousel, format: :json)
end
