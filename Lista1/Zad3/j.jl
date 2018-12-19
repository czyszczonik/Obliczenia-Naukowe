function distr(minimum, maximum)
    println("Distribustion for numbers: ",minimum," and ", maximum)
    delta=Float64(nextfloat(minimum)-minimum)
    println("Delta: 2^",log2(delta))
    k=Float64(1.0)
    x=minimum
    while x <= maximum
        x=Float64(x+k*delta)
        step=x-prevfloat(x)
        if delta != step
            println("Delta changed for x: ",x,"\t2^",log2(step))
        end
        println("Bits: ",bits(minimum+k*delta),"\tx: ",minimum+k*delta)
        k=Float64(k+1.0)
    end
    println("Delta: 2^",log2(delta)," for interval: (",minimum, ",",maximum,")")
end

distr(1,2)
