#Jakub Czyszczonik 236355
function warNewton (x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
  nt = fx[length(fx)]
  for index = length(fx)-1:-1: 1
     nt = fx[index] + (t - x[index])*nt
  end
  return nt
end
