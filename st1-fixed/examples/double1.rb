class Understanding
    def initialize(intuition)
		@intuition = intuition
	end
end

describe Understanding do
	it "initializes with intuition" do
	  intuition = double("intuition")
	  Understanding.should_receive(:new).with(intuition)
	  @understanding = Understanding.new(intuition)
	end
end