#Jakub Czyszczonik 236355

function recursion(Type)
    population = Type(0.01)
    r = Type(3)
    println("Iteration :0", " p: ",population)
    for iteration in range(1, 40)
        population = population + r * population * (Type(1.0) - population)
        if iteration == 10
            population = floor(population, 3)
        end
        println("Iteration :",iteration, " p: ",population)
    end
end

recursion(Float32)
