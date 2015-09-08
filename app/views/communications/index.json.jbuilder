json.array!(@communications) do |communication|
  json.extract! communication, :id, :type, :value, :default, :contact_id
  json.url communication_url(communication, format: :json)
end
