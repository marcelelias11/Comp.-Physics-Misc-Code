/*Aluno: Marcelo Elias de Araújo Júnior
Estudo Dirigido 03, Aula 27-03-23 */
chdir("C:\Users\Skynet-1.0\Documents\Física Computacional")
dados = read("arquivo_entrada_fced_27-03-2023.txt", 1,5)
g = dados(1); // gravidade
M1 = dados(2); // massa 1
M2 = dados(3); // massa 2
R1 = dados(4);  // comprimento da corda 1
R2 = dados(5); // comprimento da corda 2

theta1 = 35*%pi/180; // ângulo inicial 1
theta1dot = 0; // velocidade inicial 1
theta2 = 75*%pi/180; // ângulo inicial 2
theta2dot = 0; // velocidade inicial 2


t = 0; // tempo inicial
dt = 0.01; // incremento

Vtheta1 = []; // Vetor para armezenar os valores de theta1
Vtheta2 = []; // Vetor para armazenar os valores de theta2
VK = []; // Vetor para armazenar os valores da energia cinética
VU = []; // Vetor para armazenar os valores da energia potencial
Vt = []; // Vetor para armazenar os valores de t

exec('Marcelo_Elias_FCED_27-03-2023.sci')
Euler() //Função que utiliza o método de Euler
print("arquivo_saida_Vtheta1_fced_27-03-2023.txt", Vtheta1)
print("arquivo_saida_Vtheta2_fced_27-03-2023.txt", Vtheta2)
print("arquivo_saida_Vt_fced_27-03-2023.txt", Vt)
print("arquivo_saida_VK_fced_27-03-2023.txt", VK)
print("arquivo_saida_VU_fced_27-03-2023.txt", VU)
