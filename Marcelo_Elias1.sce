//Estudo Dirigido 1, 18/01/2023
//Aluno: Marcelo Elias de Araújo Júnior
//Física Computacional - Turma 01
chdir('C:\Users\Skynet-1.0\Documents\Física Computacional')
diary('Marcelo_Elias.sav')
lambda_c11 = 5.78 * 10^(-4) //Constante de decaimento do Carbono-11
hlc11 = 0.693/lambda_c11 // Meia-vida do Carbono-11
n0 = 578*rand() //Valor aleatório para o n0
t = 106*rand() //Valor aleatório para o tempo
nt = n0 * exp((-lambda_c11)*t) //Lei do decaimento
dt = 0:1:10000 //Tempo de 0 a 10000 segundos incrementado em 1 segundo
ndt = n0 * exp((-lambda_c11)*dt) //Lei do decaimento em relação a dt
//Todas as linhas abaixo são relacionadas as respostas do estudo dirigido
plot(dt,ndt) //Resposta do ítem g)
title("Gráfico do decaimento do Carbono-11 (N(t) x t)", "fontsize",3)
xlabel('t(s)')
ylabel('N(t)')
format('v', 15)
disp('Código da atividade realizado no arquivo do SciNotes Marcelo_Elias1.sce')
disp('Elemento escolhido: Carbono-11')
disp('Constante de decaimento do Carbono-11: ' + string(lambda_c11) + 's^-1')
disp('a) Meia-vida do Carbono-11: ' + string(hlc11) + ' segundos')
disp('b) N0: ' + string(n0))
disp('c) Tempo aleatório: ' + string(t)+ ' segundos')
disp('d) N(t): ' + string(nt))
x=input("Mostrar valores de dt e N(dt)? y ou n: " ,"string")
if x == "y" then
    disp('e) Intervalo incrementado de tempo escolhido (em segundos):')
    disp(dt)
    disp('f) Valores de N(dt) obtidos:')
    disp(Ndt')
end
if x == "Y" then
    disp('e) Intervalo incrementado de tempo escolhido (em segundos):')
    disp(dt)
    disp('f) Valores de N(dt) obtidos:')
    disp(Ndt')
end
diary(0)
