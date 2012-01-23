require 'instapi'

# i = Instapi.new('username', 'password')
i = Instapi.new(*ARGV).login!
i.unread.each do |bookmark|
  p bookmark
end
