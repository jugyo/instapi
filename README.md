instapi
====

Wrapper of the Instapaper Simple API. Instaピ!

Feature
----

* get unread bookmarks
* archive a bookmark
* delete a bookmark
* get a content of bookmark as text

Install
----

    gem install instapi

Example
----

    require 'instapi'

    i = Instapi.new('username', 'password')
    i.unread.each do |bookmark|
      p bookmark
    end

Copyright
----

Copyright (c) 2012 jugyo, released under the MIT license