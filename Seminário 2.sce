funcao = input("Digite a função desejada: ");

termos = input("Digite o número de termos desejado: ");

// criando a variável x como um array de intervalos de 0 a 2*pi
x = linspace(0, 2*%pi, 10000);

// criando a variável y como o resultado da função escolhida pelo usuário
y = funcao;

// criando as variáveis para os coeficientes
coef_a0 = 0;
coef_an = [];
coef_bn = [];

// criando um loop para calcular os coeficientes
for i = 1:termos
    // calculando os coeficientes an
    coef_an(i) = 2/length(x) * sum(y .* cos((i-1) .* x));
    // calculando os coeficientes bn
    coef_bn(i) = 2/length(x) * sum(y .* sin((i-1) .* x));
end

// calculando o coeficiente a0
coef_a0 = 1/length(x) * sum(y);

// mostrando os termos da série de Fourier
disp(["Os coeficientes da série de Fourier para a função ", string(funcao), " são:"]);
disp(["a0 = ", string(coef_a0)]);
for i = 1:termos
    disp(["a" + string(i) + " = " + string(coef_an(i))]);
    disp(["b" + string(i) + " = " + string(coef_bn(i))]);
end

// criando a variável y_fourier para armazenar os termos da série de Fourier
y_fourier = coef_a0;
for i = 1:termos
    y_fourier = y_fourier + coef_an(i) * cos((i-1) .* x) + coef_bn(i) * sin((i-1) .* x);
end

// plotando os gráficos
//title("Gráficos");
//subplot(2, 2, 1)
plot(x, y, 'r');
//xtitle("Função escolhida")
xlabel("x");
ylabel("y");
//subplot(2, 2, 2)
plot(x, y_fourier);
//xtitle("Série de Fourier")
xtitle("Função Escolhida(Vermelho) vs Série de Fourier(Azul)")
xlabel("x");
ylabel("y");

