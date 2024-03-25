//SUBROTINA todas as curvas


T0=77;//temperatura inicial
t0=0;//tempo inicial
Ta=60;//temp ambiente do alimento

///////////////////////////////////////////////////////////////////////////////////////
k1=-0.02484;//plástico
function dT1dt1 = F1(t1,T1) //Definindo a função 
    dT1dt1=k1*(T1-Ta);  //Variação da temperatura no tempo
endfunction
T1=T0;
tf=[0:500]; //intervalo de tempo
T1=ode(T1,t0,tf,F1); //Resolução da EDO

plot(tf,T1,'y'); //Gerando o gráfico
xtitle("Lei do resfriamento de Newton","Tempo(s)","Temperatura(°C)")

///////////////////////////////////////////////////////////////////////////////////////

k2=-0.04758;//vidro
function dT2dt2 = F2(t2,T2) //Definindo a função 
    dT2dt2=k2*(T2-Ta);  //Variação da temperatura no tempo
endfunction
T2=T0;
tf=[0:500]; //intervalo de tempo
T2=ode(T2,t0,tf,F2); //Resolução da EDO

plot(tf,T2,'c'); //Gerando o gráfico
///////////////////////////////////////////////////////////////////////////////////////

k3=-0.03779;//alumínio
function dT3dt3 = F3(t3,T3) //Definindo a função 
    dT3dt3=k3*(T3-Ta);  //Variação da temperatura no tempo
endfunction
T3=T0;
tf=[0:500]; //intervalo de tempo
T3=ode(T3,t0,tf,F3); //Resolução da EDO

plot(tf,T3,'b'); //Gerando o gráfico
///////////////////////////////////////////////////////////////////////////////////////

k4=-0.03456;//isopor
function dT4dt4 = F4(t4,T4) //Definindo a função 
    dT4dt4=k4*(T4-Ta);  //Variação da temperatura no tempo
endfunction
T4=T0;
tf=[0:500]; //intervalo de tempo
T4=ode(T4,t0,tf,F4); //Resolução da EDO

plot(tf,T4,'r'); //Gerando o gráfico
///////////////////////////////////////////////////////////////////////////////////////

k5=-0.00161548;//garrafa térmica
function dT5dt5 = F5(t5,T5) //Definindo a função 
    dT5dt5=k5*(T5-Ta);  //Variação da temperatura no tempo
endfunction
T5=T0;
tf=[0:500]; //intervalo de tempo
T5=ode(T5,t0,tf,F5); //Resolução da EDO

plot(tf,T5,'g'); //Gerando o gráfico

legend(["plástico","vidro","alumínio","isopor","garrafa térmica"]);
