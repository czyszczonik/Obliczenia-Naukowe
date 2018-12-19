#Jakub Czyszczonik 236355
function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
  result = copy(f)
  for argIndex = 2 : length(x)
    for resultIndex = length(x) : -1: argIndex
      result[resultIndex] = (result[resultIndex] - result[resultIndex-1])/(x[resultIndex] - x[resultIndex-argIndex+1])
    end
  end
  return result
end
