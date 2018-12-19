#Jakub Czyszczonik 236355
include("newton.jl")
using Base.Test

function f(x)
  return x^2 - 4
end

function df(x)
  return 2*x
end

@testset "Newton Test" begin
    @test mstycznych(f, df, -3.0, 0.00001, 0.00001, 1000) == (-2.000000000026214, 1.0485656787295738e-10, 3, 0)
    @test mstycznych(f, df, 2.0, 0.00001, 0.00001, 1000) == (2.0, 0.0, 0, 0)
    @test mstycznych(f, df, 1.0, 0.00001, 0.00001, 2) == (1, 1, 1, 1)
    @test mstycznych(f, df, 1.0, 0.00001, 0.00001, 1000) == (2.0000000929222947, 3.716891878724482e-7, 3, 0)
    @test mstycznych(f, df, 0.0, 0.00001, 0.00001, 1000) == (2, 2, 2, 2)
end
