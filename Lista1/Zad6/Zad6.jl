#Jakub Czyszczonik 236355
function f(x)
  return sqrt(x^2.0 + 1.0) - 1.0
end

function g(x)
  return x^2.0 / (sqrt(x^2.0 + 1.0) + 1.0)
end

# Measuring how fast functions achieve 0.
for i = 1 : 180
  x = f(Float64(8.0^-i))
  y = g(Float64(8.0^-i))
  println("Iteration = ", i, "  f(x) = ", x, "  g(x) = ", y)
end
