class User < ApplicationRecord
  def check(email, password)
    user = self.find_by(email: email)
    user_pass = self.find_by(password: password)
    if user == user_pass
      user
    else
      nil
    end
  end
end