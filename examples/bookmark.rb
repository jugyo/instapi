require 'instapi'

# i = Instapi.new('username', 'password')
i = Instapi.new(*ARGV)
i.add('https://github.com/jugyo')
