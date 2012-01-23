require 'instapi'

# i = Instapi.new('username', 'password')
i = Instapi.new(*ARGV).login!
i.add('https://github.com/jugyo')
