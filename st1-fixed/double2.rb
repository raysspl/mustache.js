class PeopleWant
	attr_accessor :stuff

	def initialize()
	@stuff = Hash.new
	end

	#add's someone's want to hash, :name => :want
	def add_want(someone)
		@stuff[someone.name] = someone.want
	end

	#satisfy want, someone.find_they_get(:what_they_want)
	def satisfy_want(someone) 
		someone.finds_they_get(:what_they_need)
	end	
end

describe PeopleWant do

  it "should log what someone wants" do
    #double an instance of Someone
     someone = double("Someone")
     someone.should_receive(:want).and_return(:something)
     someone.should_receive(:name).and_return(:you)

    #Create and log an instance of someone's wants 
     people_want = PeopleWant.new
     people_want.add_want(someone)

     #verify people_want logged "someone.name" => "someone.want"
     people_want.stuff[:you].should eq(:something)
  end


  it "what they should be satisfied with" do
    #double an instance of Someone
     someone = double("Someone")

     someone.should_receive(:name).twice.and_return(:you)
    #ignore using "they" as a third-person-singular
     someone.should_receive(:want).and_return(:what_they_wan) 
     someone.should_receive(:finds_they_get).with(:what_they_want)

    #Create and log an instance of someone's wants 
     people_want = PeopleWant.new
     people_want.add_want(someone)

    #satisfy with someone.finds_they_get(@stuff[someone.name])
     people_want.satisfy_want(someone)
  end
end
			