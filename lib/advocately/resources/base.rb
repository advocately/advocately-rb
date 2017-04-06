module Advocately
  class Base < JsonApiClient::Resource
    self.site = ENV['ADVOCATELY_API'] || "https://api.advocate.ly/api/"
    self.connection_class = CustomConnection
    class_attribute :api_token, :app_id
  end
end
