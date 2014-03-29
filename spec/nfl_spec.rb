describe NFL do 
  before do
    @nfl = NFL.new
  end

  it "is the right class" do
    @nfl.should.be.kind_of(NFL)
  end

  it "can get a response from nfl_draft/teams" do 
    @nfl.teams do |response|
      response.should.be.kind_of(Hash)
      resume
    end
    wait {}
  end
end