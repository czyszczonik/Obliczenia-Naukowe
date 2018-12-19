#Jakub Czyszczonik 236355
function eps(Type)
    eps = Type(1.0)
    while 1 + eps / 2 > 1
        eps = eps / 2
    end
    return eps
end

println("Machine Epsilon for Float16: \nComputed eps = " ,eps(Float16), "\nLibrary eps  = ", eps(Float16),"\n")
println("Machine Epsilon for Float32: \nComputed eps = " ,eps(Float32), "\nLibrary eps  = ", eps(Float32),"\n")
println("Machine Epsilon for Float64: \nComputed eps = " ,eps(Float64), "\nLibrary eps  = ", eps(Float64),"\n")
