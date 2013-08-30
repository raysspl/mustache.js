class SportsCar
  attr_accessor :owner
  
    def initialize(make)
        @make = make
        @owner = "douche"
    end
    
    def bought_by(buyer)
        @owner = buyer.name # We're essentially testing for this function here!
    end

end

#class Buyer
#    attr_accessor :name
#    def initialize(name)
#        @name = name
#    end
#end

describe SportsCar do
  it "should sell to someone" do
    mr_somebody   = double("buyer")
    new_douche    = double("buyer") 
    vroom_vroom   = SportsCar.new("Zoomissan")
 
    vroom_vroom.make.should eq("Zoomissan")
    mr_somebody.should_receive(:name).and_return("Mr Somebody")
    # new_douche.should_receive(:name).and_return("Sir Douche")
    #The car was sold to the wrong guy...
    # vroom_vroom.bought_by(new_douche)
    vroom_vroom.bought_by(mr_somebody)
    
    vroom_vroom.owner.should eq("Mr Somebody")  
  end

  # Goal: The difference between porcupine and bmw owners is?
  # pricks are 

end