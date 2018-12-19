#Jakub Czyszczonik 236355
include("../zad1/bisection.jl")
include("../utils/printer.jl")

function f(x)
  return 3*x - (e^x)
end

zero = mbisekcji(f, 0.0, 2.0, 0.0001, 0.0001)
first = mbisekcji(f, 0.0, 1.0, 0.0001, 0.0001)
second = mbisekcji(f, 1.0, 2.0, 0.0001, 0.0001)

printPretty("Bisekcja",zero)
printPretty("Bisekcja",first)
printPretty("Bisekcja",second)
