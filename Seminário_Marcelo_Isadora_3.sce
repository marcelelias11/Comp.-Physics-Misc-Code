L=1;
n = input('Digite o nível de energia: ')
function y=P(x)
    psi = sqrt(2/L) * sin(n*%pi*x/L); // calcular função psi(x)
    y = psi.^2; // calcular função de densidade de probabilidade P(x)
endfunction

function y=Q(x)
    y = sqrt(2/(L)); // distribuição uniforme de proposta Q(x)
endfunction

N = 100000; // número de amostras a serem geradas

x = zeros(1, N);
i = 1;
while i <= N do
    // gerar amostra da distribuição de proposta
    x1 = rand();
    
    // calcular razão entre as funções de densidade de probabilidade
    aceitar = P(x1) / Q(x1);
    
    // gerar número aleatório uniforme entre 0 e 1
    u = rand();
    
    // aceitar ou rejeitar a amostra
    if u <= aceitar then
        x(i) = x1;
        i = i + 1;
    end
end

// plotar histograma das amostras geradas
histplot(100,x,normalization=%f);
