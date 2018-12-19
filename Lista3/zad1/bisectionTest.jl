#Jakub Czyszczonik 236355
include("bisection.jl")
using Base.Test

function f(x)
  return x^2 - 4
end

@testset "Bisection Test" begin
  @test mbisekcji(f,1.0, 1.5, 0.00001, 0.00001) == (1, 1, 1, 1)
  @test mbisekcji(f,-3.0, 1.5, 0.00001, 0.00001) == (-1.999995231628418, -1.9073463590757456e-5, 19, 0)
  @test mbisekcji(f,-2.0, 1.5, 0.00001, 0.00001) == (-1.9999933242797852, -2.6702836294134613e-5, 19, 0)
  @test mbisekcji(f,1.0, 2.5, 0.00001, 0.00001) == (2.000001907348633, 7.629398169228807e-6, 18, 0)
  @test mbisekcji(f,-3.0, 20.0, 0.00001, 0.00001) == (1, 1, 1, 1)
end
