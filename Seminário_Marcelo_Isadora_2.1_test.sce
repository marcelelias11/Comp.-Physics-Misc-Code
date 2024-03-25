A = input("Digite as amplitudes dos harmônicos entre colchetes e separadas por espaço: ");
n = length(A); // Número de harmônicos

disp("Escolha o tipo de onda:");
disp("1 - Onda tradicional")
disp("2 - Onda triangular");
disp("3 - Onda quadrada");
disp("4 - Onda dente de serra");
disp('5 - Onda quadrada perfeita')
option = input("");

t = linspace(0,%pi,1000)

// Cálculo da onda
y = zeros(1, length(t));
for i=1:n
    k = i*2-1; // Ordem do harmônico
    if option == 1 then
        y = y + A(i)*sin(2*%pi*i*t);
        titulo = "Onda resultante da soma dos harmônicos senoidais"
    elseif option == 2 then
        y = y + ((8/%pi^2)*(-1)^((i - 1)/2)/(i^2))*sin(2*%pi*i*t)
        titulo = "Onda triangular resultante"
    elseif option == 3 then
        y = y + A(i)*sin(2*%pi*k*t)/(2*k-1);
        titulo = "Onda quadrada resultante"
    elseif option == 4 then
        y = y + ((1/2)*(1/i*%pi)*sin(2*%pi*i*t))
        titulo = "Onda dente de serra resultante"
    elseif option == 5 then
     y = y + A(i)*sign(sin(2*%pi*i*t));
        titulo = "Onda quadrada perfeita resultante"
end

// Plotagem do resultado
plot(t, y);
xlabel('Tempo');
ylabel('Amplitude');
xtitle(titulo);
