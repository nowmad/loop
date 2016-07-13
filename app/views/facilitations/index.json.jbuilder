json.array!(@facilitations) do |facilitation|
  json.extract! facilitation, :id, :title, :facilitator_email
  json.url facilitation_url(facilitation, format: :json)
end
