json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address, :updated_at
end
