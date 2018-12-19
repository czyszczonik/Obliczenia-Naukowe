#Jakub Czyszczonik 236355
function Descending(Type)
    n = 5
    x = Type[2.718281828, -3.141592654, 1.414213562, 0.577215664, 0.301029995]
    y = Type[1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]
    Computed = Array{Type}(n)

    for index = 1 : n
      Computed[index] = x[index]*y[index]
    end

    sort!(Computed, rev=true)
    Positive = Type(0.0)
    for index = 1 : n
      if Computed[index] > 0
        Positive = Positive + Computed[index]
      end
    end

    sort!(Computed)
    Negative = Type(0.0)
    for index = 1 : n
      if Computed[index] < 0
        Negative = Negative + Computed[index]
      end
    end

    Total = Positive + Negative
    println("Descending = ", Total," for ",Type)
end

Descending(Float32)
Descending(Float64)
