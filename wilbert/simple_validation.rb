=begin
Write a simple regex to validate a username.
Allowed characters are:
-lowercase letters -numbers -underscore
length shoould be between 4 and 16 characters.
=end

def validate_usr(username)
(username =~ /\A[a-z0-9_]{4,16}\z/) == 0
end
