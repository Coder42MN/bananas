require 'httpclient'
require 'json'

puts "example rest client"

# create a new http client
c = HTTPClient.new

# set the credentials
c.set_auth("http://<url goes here>:4280", "coder42@code42.com", "<password goes here>")

# safe to define the content type
headers = {
	'Content-Type' => 'application/json'
}

# make a get request against the "Plan" resource
response = c.get("http://<url goes here>:4280/api/Plan")

# this is how you would create a plan
# planinfo = { 'name' => 'stuff', 'orgId' => 2 }
#response = c.post_content("http://<url goes here>:4280/api/Plan", planinfo.to_json, headers)

# print out the response body
puts response
puts "-----"
puts response.body
