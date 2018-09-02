json.id product.id
json.name product.name
json.price product.price
json.tax product.tax
json.total product.total
json.image_url product.image_url
json.description product.description
json.discount? product.is_discounted?

json.formatted do
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end  