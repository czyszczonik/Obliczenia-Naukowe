#Jakub Czyszczonik 236355
function Backward(Type)
    n = 5
    x = Type[2.718281828, -3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
    y = Type[1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]
    Sum = Type(0.0)

    #Compute and sum vector results backward
    index = n
    while index != 0
        Sum = Sum + Type(x[index]*y[index])
        index = index - 1
    end
    println("Backward Sum = ", Sum," for ",Type)
end

Backward(Float32)
Backward(Float64)
