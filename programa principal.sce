//FÍSICA COMPUTACIONAL
//AUTOR: LUCAS SANTOS CARDOSO
//DATA:10/04/2023

//PROGRAMA PRINCIPAL
clear();

//Arquivo de Entrada
dados = read("./constantes.txt",5,1);

disp("Programa Lei do resfriamento de Newton")

Recipiente = input("Escolha o recipiente (plástico = p, vidro = v, alumínio = a, isopor = i, garrafa térmica = g, todos = t:","string");

select(Recipiente)
    
case 'p' then
    k=dados(1); //const de proporcionalidade
    
case 'v' then
    k=dados(2);
    
case 'a' then
    k=dados(3);
    
case 'i' then
    k=dados(4);
    
case 'g' then
    k=dados(5);
    
case 't' then
    exec("metodo todos.sci");
end
m = input("Escolha o método(ODE = 1,EULER = 2):");

if (m==1) then
    exec('metodo ode.sci');
end

if (m==2) then
    exec('metodo de euler.sci');
end
