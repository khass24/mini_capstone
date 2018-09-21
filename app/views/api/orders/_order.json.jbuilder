json.id order.id
json.user_email order.user.email
json.subtotal order.subtotal
json.tax json.tax
json.total json.total

json.formatted do 
  json.subtotal number_to_currency(order.subtotal)
  json.tax number_to_currency(order.tax)
  json.total number_to_currency(order.total)
end

json.products do 
  json.array! order.products, partial: 'api/products/product', as: :product
end