def validate_usr(username)
  if /\s/.match(username) == nil
    if /([^a-z^0-9_])/.match(username) == nil && username.length >= 4 && username.length <= 14
    return true
    end
  else
    return false
  end
end
