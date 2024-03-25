function y = Euler()
while t<5 /* loop que utiliza o metodo de Euler 
para resolver as equações de movimento do pêndulo duplo e 
plota os gráficos de theta1, theta2, U e K em função de t */
  a = -(M1+M2)*g*R1*sin(theta1) - M2*R1*R2*(theta2dot**2)*sin(theta1-theta2);
  b = (M1 + M2)*R1**2;
  c = M2*R1*R2*cos(theta1-theta2);
  f = -M2*g*R2*sin(theta2)+M2*R1*R2*(theta1dot**2)*sin(theta1-theta2);
  k = M2*R2**2;
  w = M2*R1*R2*cos(theta1-theta2);
  theta2ddot = (f-((a*w)/b))/(k-((c*w)/b));
  theta1ddot = a/b - c*theta2ddot/b;
  theta2dot = theta2dot + theta2ddot*dt;
  theta1dot = theta1dot + theta1ddot*dt;
  theta1 = theta1 + theta1dot*dt;
  theta2 = theta2 + theta2dot*dt;
     
  K = 0.5*M1*R1**2*(theta1dot**2) + 0.5*M2*(R2**2*theta2dot**2+2*R1*R2*theta1dot*theta2dot*cos(theta1-theta2)+R1**2*theta1dot**2)
  U = -(M1+M2)*g*R1*cos(theta1)-M2*g*R2*cos(theta2)
     
  t = t + dt;
  Vtheta1 = [Vtheta1 theta1];
  Vtheta2 = [Vtheta2 theta2];
  Vt = [Vt t];
  VK = [VK K];
  VU = [VU U];
  subplot(2,2,1)
  plot(Vt,Vtheta1,"b")
  xtitle('theta1 em função de t','tempo', 'Ângulo theta1')
  subplot(2,2,2)
  plot(Vt,Vtheta2,"r")
  xtitle('theta2 em função de t', 'tempo', 'Ângulo theta2')
  subplot(2,2,3)
  plot(Vt,VK,"g")
  xtitle('Gráfico da energia cinética','tempo', 'Energia cinética')
  subplot(2,2,4)
  plot(Vt,VU,"k")
  xtitle('Gráfico da energia potencial', 'tempo', 'energia potencial')
end
y = %T
endfunction
