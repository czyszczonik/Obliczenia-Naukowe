#Jakub Czyszczonik 236355
include("hilb.jl")
for iteration in range(1, 20)
    A = hilb(iteration)
    x = ones(Float64, iteration);
    b = A * x
    gauss = A \ b
    inverse = inv(A) * b
    gaussError = norm(x - gauss) / norm(x)
    inverseError = norm(x - inverse) / norm(x)
    println("Deg: ",iteration,
            " Rank: ", rank(A),
            " Cond: ",cond(A),
            " GaussErr: ", gaussError,
            " InversionErr: ", inverseError)
            println()
end
