#Jakub Czyszczonik 236355
# Input:
# f – funkcja f(x) zadana jako anonimowa funkcja,
# x0,x1 – przybliżenia początkowe,
# delta,epsilon – dokładności obliczeń,
# maxit – maksymalna dopuszczalna liczba iteracji,
function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64,maxit::Int)
    f0 = f(x0)
    f1 = f(x1)
    if (sign(f0) == sign(f1))
        return 2, 2, 2, 2
    end
    for iteration = 1: maxit
        #change direction of estimation
        if abs(f0) > abs(f1)
            x0,x1 = x1,x0
            f0,f1 = f1,f0
        end
        temp = (x1 - x0) / (f1 - f0)
        x1 = x0
        f1 = f0
        x0 = x0 - f0*temp
        f0 = f(x0)
        if abs(x1 - x0) < delta || abs(f0) < epsilon
            return x0, f0, iteration, 0
        end
    end
    #Max iteration error
    return 1,1,1,1
end
