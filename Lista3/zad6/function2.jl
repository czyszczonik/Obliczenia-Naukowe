#Jakub Czyszczonik 236355
include("../zad1/bisection.jl")
include("../zad2/newton.jl")
include("../zad3/euler.jl")
include("../utils/printer.jl")

function f(x)
  return x * (e^(-x))
end

function df(x)
  return (-e^(-x)) * (x-1)
end


printPretty("Bisection",mbisekcji(f, -2.0, 3.0, 0.00001, 0.00001))
printPretty("Bisection",mbisekcji(f, 0.0, 30.0, 0.00001, 0.00001))

printPretty("Newton",mstycznych(f, df, 1.1, 0.00001, 0.00001, 1000))
printPretty("Newton",mstycznych(f, df, -10.0, 0.00001, 0.00001, 1000))

printPretty("Euler",msiecznych(f, -1.0, 1.0, 0.00001, 0.00001,1000))
printPretty("Euler",msiecznych(f, -1.0, 2.0, 0.00001, 0.00001,1000))

printPretty("Newton",mstycznych(f, df, 1.0, 0.00001, 0.00001, 1000))
