json.array!(@pg_firsts) do |pg_first|
  json.extract! pg_first, :id, :name
  json.url pg_first_url(pg_first, format: :json)
end
