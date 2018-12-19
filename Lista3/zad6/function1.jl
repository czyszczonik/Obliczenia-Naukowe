#Jakub Czyszczonik 236355
include("../zad1/bisection.jl")
include("../zad2/newton.jl")
include("../zad3/euler.jl")
include("../utils/printer.jl")

function f(x)
  return (e^(1-x)) - 1
end

function df(x)
  return -e^(1-x)
end

printPretty("Bisection",mbisekcji(f, 0.0, 3.0, 0.00001, 0.00001))
printPretty("Bisection",mbisekcji(f, -1000.0, 3000.0, 0.00001, 0.00001))

printPretty("Newton",mstycznych(f, df, 0.0, 0.00001, 0.00001, 1000))
printPretty("Newton",mstycznych(f, df, 4.0, 0.00001, 0.00001, 1000))

printPretty("Euler",msiecznych(f, 0.0, 2.0, 0.00001, 0.00001,1000))
printPretty("Euler",msiecznych(f, 0.0, 3.0, 0.00001, 0.00001,1000))
