#Jakub Czyszczonik 236355
include("matcond.jl")
n = [5, 10, 20]
c = [1.0, 10.0, 10^3, 10^7, 10^12, 10^16]
for iteration in range(1, length(n))
    for cond in range(1, length(c))
        A = matcond(n[iteration], c[cond])
        x = ones(Float64, n[iteration]);
        b = A * x
        gauss = A \ b
        inverse = inv(A) * b
        gaussError = norm(x - gauss) / norm(x)
        inverseError = norm(x - inverse) / norm(x)
        println("Deg: ",n[iteration],
                " Rank: ", rank(A),
                " Cond: ", c[cond],
                " GaussErr: ", gaussError,
                " InversionErr: ", inverseError)
                println()
     end
end
