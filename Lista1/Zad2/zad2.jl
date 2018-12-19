#Jakub Czyszczonik 236355
function myEps(Type)
    return 3 * (Type(4/3) - 1) - 1
end

println("Machine Epsilon for Float16: \nComputed eps = " ,myEps(Float16), "\nLibrary eps  = ", eps(Float16),"\n")
println("Machine Epsilon for Float32: \nComputed eps = " ,myEps(Float32), "\nLibrary eps  = ", eps(Float32),"\n")
println("Machine Epsilon for Float64: \nComputed eps = " ,myEps(Float64), "\nLibrary eps  = ", eps(Float64),"\n")
