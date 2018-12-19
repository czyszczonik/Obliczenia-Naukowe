#Jakub Czyszczonik 236355
function ddx(f, x, h)
  return (f(x + h) - f(x)) / h
end

n = 0
while n <= 54
  h = Float64(2.0^-n)
  approximation = ddx(sin, 1, h) + ddx(cos, 3, h)
  println("Approximation = ", approximation, " for h = ", h,"\nh sum with big number: ",h+1,"\napprox. error = ", abs(0 - approximation))
  n = n + 1
end
