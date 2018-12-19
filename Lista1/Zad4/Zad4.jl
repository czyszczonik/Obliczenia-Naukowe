#Jakub Czyszczonik 236355
function number(numba)
    x = nextfloat(numba)
    while Float64(x * Float64(1/x)) == 1
        #Searching step by step.
        x = x + Float64(nextfloat(x) - x)
    end
    println("x = ", x)
end

number(Float64(1.0))
number(-Inf)
