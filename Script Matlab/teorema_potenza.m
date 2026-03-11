syms Cm
Pot_i= 0;
% g é NEGATIVA! ( (-g) il più delle volte)
Pot_e= 5*(-9.81)*1.69 +Cm*5.06 +186*6.88;

dEc= 5*dot([-2.93; 1.69],[-20.75; -5.39]) +0.4*0.879*25.882 +3*dot([6.88; 0],[-23.76; -41.58]);


eqPot= Pot_e + Pot_i == dEc;
sol = solve(eqPot, Cm, 'Real', true);
disp(round(sol, 3));
