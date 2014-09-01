class YoAuth

  def self.get_yo_username(yoauth_token)
    response = HTTParty.get("http://yoauth.herokuapp.com/validate?yoauth_token=#{yoauth_token}")
    return handle_getting_of_yo_username_response(response)
  end

  def self.handle_getting_of_yo_username_response(response)
    if response.code == 200 || response.code == 201
      parsed_response = ActiveSupport::JSON.decode(response.body)
      return { yo_user_id: parsed_response[:user][:id], yo_username: parsed_response[:user][:yo_username]
    else
      return "Error"
    end
  end

end