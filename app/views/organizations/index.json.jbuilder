json.array!(@organizations) do |organization|
  json.extract! organization, :id, :title, :tagline
  json.url organization_url(organization, format: :json)
end
