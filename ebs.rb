module Ebs
  class EbsCalc
    #run 100 iterations and return array of ship dates and count.
    def calc (estimates, velocities)
      predictions = Hash.new(0)
      100.times {
        prediction = estimates[0] * velocities[0] + estimates[1] * velocities[1]
        predictions[prediction] = predictions[prediction] += 1
        puts prediction
      }
      
      return predictions
    end
  end
end
