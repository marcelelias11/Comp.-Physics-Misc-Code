//Elementos escolhidos: Iodo pra Xenon

n = 10000

for i = 1:n
    p = rand()
    if (p == 0) & (p <= 0.0727) then
        E(i) = 333.8
    end
    if (p > 0.0727) & (p <= 0.899) then
        E(i) = 606.3
    end
    if (p > 0.899) & (p <= 1) then
        E(i) = 0
    end
end

histplot(3, E)
