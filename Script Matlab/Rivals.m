% Esempio di utilizzo
omega= -6.039;     % Velocità angolare
omega_dot= 20.84; % Accelerazione angolare
%Nell'inserire il vettore r, stare molto attenti ai segni delle componenti
%del vettore congiungente. (Se si sbaglia segno si sbaglia senso della
%velocità risultante
r= [0, (1.14)];    % Vettore raggio, esempio: 3i + 4j come vettore riga. utilizzare cosd() per i gradi, cos() per i radianti

V0= [0, 0];   % Vettore velocità iniziale, esempio: 1i + 2j come vettore riga
a0= [0, 0];   % Vettore accelerazione iniziale



% Calcolo della velocità
V = rivals_velocity(V0, omega, r);

% Stampa il risultato
V = ['Il vettore velocità V è: ', num2str(round(V(1,1), 2)), 'i ', num2str(round(V(2,1), 2)), 'j'];
disp(V);

% Calcolo della accelerazione
a = rivals_acceleration(a0, omega, omega_dot, r);

% Stampa il risultato
a = ['Il vettore accelerazione è: ', num2str(round(a(1,1), 2)), 'i ', num2str(round(a(2,1), 2)), 'j'];
disp(a)

function V = rivals_velocity(V0, omega, r)
    % Definisci il vettore w
    w_vector = [0; 0; omega];  % w lungo l'asse k
    
    % Definisci il vettore r
    r_vector = [r'; 0];  % x lungo i e y lungo j
    
    % Calcola il prodotto vettoriale
    V = [V0';0] + cross(w_vector, r_vector);
end

function a = rivals_acceleration(a0, omega, omega_dot, r)
    % Definisci il vettore w
    w_vector = [0; 0; omega];  % w lungo l'asse k
    w_dot_vector = [0; 0; omega_dot]; % w_dot lungo l'asse k
    
    % Definisci il vettore r
    r_vector = [r'; 0];  % x lungo i e y lungo j
    
    % Calcola il secondo termine: omega x (omega x r)
    termine2 = cross(w_vector, cross(w_vector, r_vector));

    % Calcola il terzo termine: omega_dot x r
    termine3 = cross(w_dot_vector, r_vector);

    % Calcola a
    a = [a0'; 0] + termine2 + termine3;
end

