json.array!(@applications) do |application|
  json.extract! application, :id, :first_name, :middle_name, :last_name
  json.url application_url(application, format: :json)
end
