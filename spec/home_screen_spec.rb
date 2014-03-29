describe HomeScreen do
  tests HomeScreen

  # new method does addtl setup, so we have to provide our own @controller
  # with our own controller method to instantiate it the ProMotion way
  # via http://jamonholmgren.com/building-an-espn-app-using-rubymotion-promotion-and-tdd
  def controller
    @controller ||=HomeScreen.new 
  end
  alias :screen :controller

  it "is a TableScreen" do
    screen.should.be.kind_of(PM::TableScreen)
  end
end