json.array!(@widgets) do |widget|
  json.extract! widget, :id
  json.url widget_url(widget, format: :json)
end
