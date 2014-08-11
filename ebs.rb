module Ebs
  class EbsCalc
    #run 100 iterations and return array of ship dates and count.
    def calc (estimates, velocities)
      predictions = Hash.new(0)
      r = Random.new
      100.times {
        prediction = 0
        estimates.each { |x|
          prediction +=  x / velocities[r.rand(0...velocities.length-1)]
        }
        
        final_prediction = prediction.round
        
        #increment number of times prediction has been made
        predictions[final_prediction] = predictions[final_prediction] += 1
      }
      
      puts predictions.values
      return predictions
    end
  end
end
