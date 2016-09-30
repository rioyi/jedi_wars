=begin
Write a simple regex to validate a username.
Allowed characters are:
-lowercase letters -numbers -underscore
length shoould be between 4 and 16 characters.
=end

def validate_usr(username)
(username =~ /\A[a-z0-9_]{4,16}\z/) == 0
end

=begin

Otras respuestas:

def validate_usr(username)
  /\A[a-z0-9_]{4,16}\z/ === username
end
------------------------------------------
def validate_usr(username)
  username =~ /^[a-z0-9_]{4,16}$/ ? true : false
end

------------------------------------------------
def validate_usr(username)
 !! username.match(/(?=\w{4,16})^[a-z0-9_]+$/)
end

=end
