#Jakub Czyszczonik 236355
function eta(Type)
    eta = Type(1.0)
    while eta / 2 > 0
        eta = eta / 2
    end
    return eta
end


println("Eta for Float16:\nComuted eta = ",eta(Float16),"\n","Library eta = ",nextfloat(Float16(0.0)),"\n")
println("Eta for Float32:\nComuted eta = ",eta(Float32),"\n","Library eta = ",nextfloat(Float32(0.0)),"\n")
println("Eta for Float64:\nComuted eta = ",eta(Float64),"\n","Library eta = ",nextfloat(Float64(0.0)),"\n")
