#Jakub Czyszczonik 236355
function Ascending(Type)
    n = 5
    x = Type[2.718281828, -3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
    y = Type[1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]
    Computed = Array{Type}(n)

    for index = 1 : n
      Computed[index] = x[index]*y[index]
    end

    #Sort All results Ascending and sum Positive results
    sort!(Computed)
    Positive = Type(0.0)
    for index = 1 : n
      if Computed[index] > 0
        Positive = Positive + Computed[index]
      end
    end

    #Sort All results Descending and sum Negative results
    sort!(Computed, rev=true)
    Negative = Type(0.0)
    for index = 1 : n
      if Computed[index] < 0
        Negative = Negative + Computed[index]
      end
    end

    #Sum positive and negative sums
    Total = Positive + Negative
    println("Ascending = ", Total," for ",Type)
end

Ascending(Float32)
Ascending(Float64)
