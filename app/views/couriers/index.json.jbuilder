json.array!(@couriers) do |courier|
  json.extract! courier, :id, :username, :name, :hashed_password, :salt
  json.url courier_url(courier, format: :json)
end
