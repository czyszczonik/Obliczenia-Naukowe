#Jakub Czyszczonik 236355
# Input:
# f – funkcja f(x) zadana jako anonimowa funkcja (ang. anonymous function),
# a,b – końce przedziałstart początkowego,
# delta,epsilon – dokładności obliczeń,
function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
    fa = f(a)
    fb = f(b)
    # check condition
    if (sign(fa) == sign(fb))
        return 1, 1, 1, 1
    end
    iteration = 0
    root = (a + b)/2.0
    value = f(root)
    while(true)
        #Accuracy end conditions
        if(abs(b-a) <= delta || abs(value) <= epsilon)
            return root, value, iteration, 0
        end
        iteration += 1
        #computing root and value of f(root) with bisection
        root = (a + b)/2.0
        value = f(root)
        #new limits of interval
        if(sign(fa) == sign(value))
            a = root
            fa = value
        else
            b = root
        end
    end
end
