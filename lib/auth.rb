require 'jwt'

class Auth
  def self.create_token(user_object)
    payload = { user: JSON.parse(user_object.to_json) }
    JWT.encode(payload, 'employeedirectorywebapp', 'HS256')
  end

  def self.decode_token(token)
    JWT.decode(token, 'employeedirectorywebapp', true, { algorithm: 'HS256' }).first
  end
end