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
      @result = @mpdb.find_by_imdb_id("tt0421715", 300)
    end
    
    it "should return the movie poster" do
      @result["imageurl"].should_not be_nil
    end
    
  end

  describe "when searching via imdb id and id is bad" do
    before do
      @result = @mpdb.find_by_imdb_id("tt04217d15", 300)
    end
    
    it "should not have the movie poster" do
      @result["imageurl"].should be_nil
    end

    it "should have an error" do
      @result["errors"].should_not be_nil
    end
    
  end
  
end

