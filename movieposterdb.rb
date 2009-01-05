####### The movieposterdb API
### http://movieposterdb.com

# tvdb = Tvdb.new
# results = tvdb.search("Scrubs")
# 
# series = results.first
# series.banners
# 
# series.banners.each { |e| puts e.inspect }
# series.episodes.each { |e| puts e.inspect }

require 'rubygems'
require 'json'
require 'open-uri'

class MoviePosterDb
  attr_accessor :host
  
  def initialize
    @host = 'http://api.movieposterdb.com/json.inc.php'
  end
  
  def http_get(url)
    open(url).read
  end
  
  def find_by_imdb_id(imdb_id, width)
    JSON.parse(http_get("#{@host}?imdb=#{imdb_id.gsub(/tt/,'')}&width=#{width}"))
  end
  
  
end