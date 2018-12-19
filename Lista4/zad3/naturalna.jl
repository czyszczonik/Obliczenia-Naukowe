#Jakub Czyszczonik 236355
function naturalna(x :: Vector{Float64}, fx :: Vector{Float64})
    vectorLength = length(fx)
    normal = zeros(vectorLength)
    normal[vectorLength] = fx[vectorLength]
    for j = vectorLength-1 : -1 : 1
        normal[j] = fx[j]-normal[j+1]*x[j]
        for i = j+1 : vectorLength-1
            normal[i] = normal[i]-normal[i+1]*x[j]
        end
    end
    return normal
end
