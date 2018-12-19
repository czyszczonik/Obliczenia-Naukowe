#Jakub Czyszczonik 236355
function numberDistributionChecker(min,max)

    delta = Float64(nextfloat(min) - min)
    println("Checking schedule for interval: (",min, ",",max,")")
    println("Delta: 2^",log2(delta))

    #Power of nuber 2; Representation of Mantissa
    k = Float64(1.0)
    currentFloat = min

    while currentFloat <= max
        #Computing current Float
        currentFloat = Float64(currentFloat + k * delta)
        #Measuring previous step size
        prevStep = currentFloat - prevfloat(currentFloat)
        # If the previous step is not equal to the delta, the precision has been changed.
        if prevStep != delta
            println("Delta Changed! 2^", log2(prevStep), " for x = ", currentFloat)
        end

        println(bits(min + k * delta), " ", min + k * delta)
        k = Float64(k + 1.0)
    end

    println("Delta: 2^",log2(delta)," for interval: (",min, ",",max,")")
end

numberDistribution(Float64(1.0),Float64(2.0))
numberDistribution(Float64(0.5),Float64(1.0))
numberDistribution(Float64(2.0),Float64(4.0))
