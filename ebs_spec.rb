module Ebs
  require_relative 'ebs'

  describe EbsCalc, "#calc" do
    it "returns nothing if you do not provide any estimates" do
      #ebs = EbsCalc.new
      #results = ebs.calc [], :test_dev_velocity
    end
  end
  
  describe EbsCalc, "#calc" do
    it "returns 1 entry for perfect velocity" do
      ebs = EbsCalc.new 
      result = ebs.calc @@test_dev_estimates, @@test_dev_perfect_velocity
      expect(result.length).to eq 1
    end
  end
  
  #:test_dev_velocity = [0.5,0.1,0.7,0.4,0.3,0.9]
  @@test_dev_perfect_velocity = [1,1,1,1,1,1,1]
  @@test_dev_estimates = [3,4,1,2,3]
  
end
