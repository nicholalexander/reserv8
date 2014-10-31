json.array @customers do |customer|
  json.customer do
    json.name customer.first_name + ' ' + customer.last_name
    json.email customer.email
    json.phone customer.phone
  end
end

json.customer_count @customers.count


