json.array!(@needs) do |need|
  json.extract! need, :id, :title, :posted_at, :description, :amount_requested, :amount_donated
  json.url need_url(need, format: :json)
end
