json.server_code "404"
json.error_description "resource not found"

json.requested_resource do
  json.resource "restaurant"  
  json.requested_id @id
  json.suggested_api_redirect api_v1_restaurants_url
  json.suggested_web_redirect restaurants_url
end


