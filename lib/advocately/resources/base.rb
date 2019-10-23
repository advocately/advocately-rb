module Advocately
  class Base < JsonApiClient::Resource
    self.site = ENV['ADVOCATELY_API'] || "https://api.advocate.ly/api/"
    self.connection_class = CustomConnection
    self.json_key_format = :dasherized_key
    self.route_format = :dasherized_route
    class_attribute :api_token, :app_id
  end
end
