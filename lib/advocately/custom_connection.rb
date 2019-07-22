class CustomConnection < JsonApiClient::Connection
  def run(request_method, path, params: nil, headers: {}, body: nil)
    token = Advocately::Base.api_token
    account_id = Advocately::Base.app_id
    headers["Authorization"] = "Token token=#{token}, account_id=#{account_id}"

    super(request_method, path, params: params, headers: headers, body: body)
  end
end
