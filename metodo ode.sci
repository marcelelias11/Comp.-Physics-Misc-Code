//SUBROTINA METODO ODE


T0=77;//temperatura inicial
t0=0;//tempo inicial
Ta=60;//temp ambiente do alimento

function dTdt = F(t,T) //Definindo a função 
    dTdt=k*(T-Ta);  //Variação da temperatura no tempo
endfunction
T=T0;
tf=[0:500]; //intervalo de tempo
T=ode(T,t0,tf,F); //Resolução da EDO

plot(tf,T,'b'); //Gerando o gráfico
xtitle("Lei do resfriamento de Newton","Tempo(s)","Temperatura(°C)")
