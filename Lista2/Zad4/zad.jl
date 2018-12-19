#Jakub Czyszczonik 236355

include("coefficients.jl")

using Polynomials

function WilkinsonCounter(P)
    PolynomialRoots = roots(P)
    p = poly([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])
    for k = 1:20
        println("X = " , 21-k,
        " Root: " , PolynomialRoots[k],
        " |P(Root)|: " , abs(polyval(P, PolynomialRoots[k])),
        " |p(Root)|: " , abs(polyval(p, PolynomialRoots[k])),
        " |Zk-k|: " , abs(PolynomialRoots[k] - (21-k)))
    end
end


A = Poly(flipdim(Wilkinson, 1))
B = Poly(flipdim(Wilkinson_edited, 1))
WilkinsonCounter(A)
WilkinsonCounter(B)
