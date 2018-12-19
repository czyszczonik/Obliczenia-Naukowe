#Jakub Czyszczonik 236355

using Plots

function rec(n,c, x0)
  if n == 0 return x0
  else
    x = rec(n-1, c, x0)
    return (x^2 + c)
  end
end

function compute(c, x0)
    Result = zeros(40)
    for i = 1:40
        Result[i] = rec(i, c, x0)
    end
    return Result
end

range=1:40
A1 = compute(-2, 1)
A2 = compute(-2, 2)
A3 = compute(-2, 1.99999999999999)
Plots.plot(range,[A1,A2,A3])
Plots.savefig("Plot_A.png")

B1 = compute(-1, 1)
B2 = compute(-1, -1)
Plots.plot(range,[B1,B2])
Plots.savefig("Plot_B.png")

C1 = compute(-1, 0.75)
C2 = compute(-1, 0.25)
Plots.plot(range,[C1,C2])
Plots.savefig("Plot_C.png")
