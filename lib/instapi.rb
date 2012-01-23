require 'httpclient'
require 'nokogiri'

class Instapi
  BASE_URL = "https://www.instapaper.com"

  attr_reader :username, :password

  def initialize(username, password)
    @username, @password = username, password
    self
  end

  def client
    return @client if @client
    @client = HTTPClient.new
    @client
  end

  def login!
    client.post("#{BASE_URL}/user/login", :username => username, :password => password)
    self
  end

  def add(url, options = {})
    get('/api/add', {:url => url, :username => username, :password => password}.merge(options))
  end

  def unread
    Nokogiri::HTML(get("/u")).css('.tableViewCell').map do |elem|
      id = elem[:id].scan(/tableViewCell(\d+)/)[0][0]
      link = elem.css('.tableViewCellTitleLink').first
      {:id => id, :title => link.text, :url => link[:href]}
    end
  end

  def archive(id)
    get("/skip/#{id}")
  end

  def delete(id)
    get("/delete/#{id}")
  end

  def text(url)
    doc = Nokogiri::HTML(get("/text?u=#{url}"))
    {
      :title => doc.css('title').first.text,
      :text => doc.css('#story').first.inner_html
    }
  end

  def get(path, params = {})
    client.get_content(BASE_URL + path, params)
  end
end
