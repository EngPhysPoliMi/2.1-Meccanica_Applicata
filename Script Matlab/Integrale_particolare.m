F0= 2400;
k= 5500;
r= 440;
m= 19.69;
omega= 20.9;


omega_zero=sqrt(k/m);
fattore_h = r/(2*m*omega_zero);
parametri = ['omega_zero è: ', num2str(omega_zero), ', h è: ', num2str(fattore_h)];
disp(parametri);

Real_part=((F0)*(k-m*omega^2))/((k-m*omega^2)^2+(r*omega)^2);
Imm_part=((F0)*(r*omega))/((k-m*omega^2)^2+(r*omega)^2);

module=sqrt(Real_part^2+Imm_part^2);
phi = atan(-(Imm_part)/Real_part);
module = round(module, 6);
phi = round(phi, 6);
sol = ['Il modulo è: ', num2str(module), ' la anomalia è ', num2str(omega), 't+ ', num2str(phi)];
disp(sol);

