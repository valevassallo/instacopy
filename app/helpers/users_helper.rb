module UsersHelper
  def fullname(user)
    # self.first_name + " " + self.last_name 
    "#{user.first_name} #{user.last_name}"
  end

end
