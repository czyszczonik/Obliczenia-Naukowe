#Jakub Czyszczonik 236355
include("../zad1/bisection.jl")
include("../zad2/newton.jl")
include("../zad3/euler.jl")
include("../utils/printer.jl")

function f(x)
  sin(x) - (0.5 * x)^2
end

function df(x)
  cos(x) - x
end

bisection = mbisekcji(f, 1.5, 2.0, 0.0000005, 0.0000005)
newton = mstycznych(f, df, 1.5, 0.0000005, 0.0000005, 1000000)
euler = msiecznych(f, 1.0, 2.0, 0.0000005, 0.0000005,100000)

printPretty("Bisekcja",bisection)
printPretty("Styczne",newton)
printPretty("Sieczne",euler)
