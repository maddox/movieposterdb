require 'movieposterdb'

describe MoviePosterDb do
  before do
    @mpdb = MoviePosterDb.new
  end
  
  it "should have the right host" do
    @mpdb.host.should == "http://api.movieposterdb.com/json.inc.php"
  end
  
  describe "when searching via imdb id" do
    before do
      @result = @mpdb.find_by_imdb_id("tt0977214", 300)
    end
    
    it "should return the movie poster" do
      @result["imageurl"].should_not be_nil
    end
    
  end
  
end

