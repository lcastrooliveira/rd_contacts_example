module RequestsHelpers
  def sign_in_request(user)
    post user_session_path, params: {
                                      'user[email]' => user.email,
                                      'user[password]' => user.password
                                    }
  end
end
