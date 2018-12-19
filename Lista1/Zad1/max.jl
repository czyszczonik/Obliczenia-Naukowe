#Jakub Czyszczonik 236355
function max(Type)
    max = Type(1.0)
    while isinf(max * 2) == false
        max = max * 2
    end

    completment = Type(max / 2)
    while isinf(max + completment) == false
        max = max + completment
        completment = completment / 2
    end
    return max
end

println("Max for Float16:\n","Computed Max = ",max(Float16),"\nLibrary Max  = ", realmax(Float16),"\n")
println("Max for Float32:\n","Computed Max = ",max(Float32),"\nLibrary Max  = ", realmax(Float32),"\n")
println("Max for Float64:\n","Computed Max = ",max(Float64),"\nLibrary Max  = ", realmax(Float64),"\n")
