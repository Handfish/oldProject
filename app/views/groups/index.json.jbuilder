json.array!(@groups) do |group|
  json.extract! group, :id, :name, :description, :owner, :isPublic, :address, :latitude, :longitude
  json.url group_url(group, format: :json)
end
