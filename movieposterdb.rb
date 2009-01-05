####### The movieposterdb API
### http://movieposterdb.com

require 'rubygems'
require 'json'
require 'open-uri'

class MoviePosterDb
  HOST = 'http://api.movieposterdb.com/json.inc.php'
  
  
  def self.find_by_imdb_id(imdb_id, width)
    JSON.parse(open("#{HOST}?imdb=#{imdb_id.gsub(/tt/,'')}&width=#{width}").read)
  end
  
end