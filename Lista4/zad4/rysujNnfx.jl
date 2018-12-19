#Jakub Czyszczonik 236355
using Plots
function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
  result = copy(f)
  for argIndex = 2 : length(x)
    for resultIndex = length(x) : -1: argIndex
      result[resultIndex] = (result[resultIndex] - result[resultIndex-1])/(x[resultIndex] - x[resultIndex-argIndex+1])
    end
  end
  return result
end

function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
  nt = 1.0
  nt = fx[length(fx)]
  for K = length(fx)-1:-1: 1
     nt = fx[K] + (t - x[K])*nt
  end
  return nt
end


function rysujNnfx(f, a :: Float64, b :: Float64, n :: Int)
    prec = 10
    x = zeros(n+1)
    y = zeros(n+1)
    fx = zeros(n+1)
    size = n + 1
    h = (b-a)/n
    for index = 1: size
        x[index] = a + (index-1)*h
        y[index] = f(x[index])
    end
    fx = ilorazyRoznicowe(x, y);
    size = size * prec
    scaled_y = zeros(size)
    scaled_x = zeros(size)
    scaled_interpolated = zeros(size)
    h = (b - a)/(size-1)
    for index = 1: size
        scaled_x[index] = a + (index-1)*h
        scaled_interpolated[index] = warNewton(x, fx, scaled_x[index])
        scaled_y[index] = f(scaled_x[index])
    end
    display(plot(scaled_x, [scaled_y, scaled_interpolated]))
end
