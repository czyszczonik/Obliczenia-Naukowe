#Jakub Czyszczonik 236355
include("euler.jl")
using Base.Test

function f(x)
  return x^2 - 4
end

@testset "Euler Test" begin
    @test msiecznych(f, -3.0, 1.5, 0.00001, 0.00001,1000) == (1.9999997471333606, -1.0114664936722306e-6, 6, 0)
    @test msiecznych(f, 1.0, 1.5, 0.00001, 0.00001,1000) == (2, 2, 2, 2)
    @test msiecznych(f, -3.0, 20.0, 0.00001, 0.00001,1000) == (2, 2, 2, 2)
    @test msiecznych(f, 1.0, 3.0, 0.00001, 0.00001,1000) == (2.000000195092221, 7.803689223706556e-7, 5, 0)
    @test msiecznych(f, 1.0, 3.0, 0.00001, 0.00001,1) == (1, 1, 1, 1)
end
