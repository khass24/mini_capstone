json.array! @hammers.each do|hammer|
  json.id hammer.id
  json.name hammer.name
  json.price hammer.price
  json.image_url hammer.image_url
  json.description hammer.description
end