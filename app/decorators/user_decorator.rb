class UserDecorator < SimpleDelegator
  def shown_birthday
    birthday.strftime('%d - %m - %Y')
  end

  def shown_email
    if private_email
      "Private"
    else
      email
    end
  end
end