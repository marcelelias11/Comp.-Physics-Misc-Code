//SUBROTINA METODO DE EULER

Ta = 60;        // Temperatura ambiente em graus Celsius
T0 = 77;    // Temperatura inicial em graus Celsius

// Definir o intervalo de tempo e o número de pontos a serem calculados
dt = 1;       // Intervalo de tempo em segundos
tmax = 500;    // Tempo máximo de simulação em segundos
N = floor(tmax/dt); // Número de pontos a serem calculados

// Inicializar as variáveis
t = 0;          // Tempo inicial
T = T0;         // Temperatura inicial do objeto

// Inicializar os vetores para armazenar os resultados
tempo = zeros(1, N+1);
temperatura = zeros(1, N+1);
tempo(1) = t;
temperatura(1) = T;

// Calcular as temperaturas para cada ponto no tempo
for i = 1:N
    // Calcular a taxa de variação da temperatura
    dTdt = k*(T - Ta);
    
    // Atualizar a temperatura pelo método de Euler
    
    T = T + dTdt*dt;
    
    // Atualizar o tempo
    t = t + dt;
    
    // Armazenar os resultados
    tempo(i+1) = t;
    temperatura(i+1) = T;
    
        // Imprimir o tempo e a temperatura atual
    mprintf("t = %g s, T = %g C\n", t, T);
end

// Plotar os resultados
plot(tempo, temperatura,"r");
xtitle("Lei do Resfriamento de Newton","Tempo(s)","Temperatura(°C)");

