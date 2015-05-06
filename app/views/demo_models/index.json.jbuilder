json.array!(@demo_models) do |demo_model|
  json.extract! demo_model, :id, :name, :date_field, :dateTime_filed, :time_field, :comment
  json.url demo_model_url(demo_model, format: :json)
end
