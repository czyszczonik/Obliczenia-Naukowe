#Jakub Czyszczonik 236355
# Input:
# f, pf – funkcją f(x) oraz pochodną f'(x) zadane jako anonimowe funkcje,
# x0 – przybliżenie początkowe,
# delta,epsilon – dokładności obliczeń,
# maxit – maksymalna dopuszczalna liczba iteracji
function mstycznych(f,pf,x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
    #Check end conditions
    value = f(x0)
    if abs(value) < epsilon
        return x0, value, 0, 0
    end
    #Start iteration algorithm
    for iteration = 0: maxit
        #Check Derivative error
        derivativeValue = pf(x0)
        if derivativeValue == 0
            return 2, 2, 2, 2
        end
        #computing root and value of f(root) with newton
        root = x0 - value / derivativeValue
        value = f(root)
        #Accuracy end conditions
        if (abs(root - x0) < delta || abs(value) < epsilon)
            return root, f(root), iteration, 0
        end
        x0 = root
    end
    #Max Iteration Error
    return 1, 1, 1, 1
end
