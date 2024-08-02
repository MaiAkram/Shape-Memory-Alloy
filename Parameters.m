
% SMA
n = 3;             % Number of SMA wires
d = 0.5;           % SMA wire diameter mm
A = pi*((d)^2)/4;  % SMA wire cross sectional area mm^2
L_SMA = 200;       % Tendon length mm
V = A*L_SMA;       % SMA wire volume mm^3
raw = 6450;        % Density Kg/m^3
m = (V*10^-9)/raw; % SMA wire mass Kg
e_l = 0.05;        % Maximum allowed strain
As = 30;
Af = 45;           % Transition Temperature C
Ca = 10.3;         % Austenite phase constant MPa/C
Cm = 7;            % Martensite phase constant MPa/c
Cp = 322;          % Constant pressure specific heat  J/Kg C
h = 36200;         % Latent heat J/Kg
c_ = 10;           % Thermal conductivity W/m-K
c = c_*A/L_SMA;    % Thermal conductivity W/K
Ea = 75000;        % Austenite phase Young's modulus MPa
Em = 28000;        % Martensite phase Young's modulus MPa
R_ = 0.000820;     % Electrical resistivity ohm-mm
R = 7.8; % R_*L_SMA/A;    % Electrical resistivity ohm

% ASSUMPTIONS
T0 = 22;           % Ambient temperature C

% ACTUATOR
L_act = 120;

% PELTIER CELL
Rp = 2.3; %0.01; %2.3;
Ap = 0.04*d/2;
t = 0.0038;
k_ = 1.62;
k = k_*Ap/t; %1.5e-3;
a = 2.2*10^-4;
Ip = a*T0/Rp;

% POWER
V_max = 7.4;       % Maximum available voltage V
I_max = 7;         % Maximum required current A
gm = I_max/V_max;  % Transconductance amplifier gain
R1 = 1000;         % Op_Amp reference resisteance ohm
R2 = 1000;         % Op_Amp input resisteance ohm
Gv = 1 + (R1/R2);  % Op-Amp voltage gain
R_load = Gv/gm;    % Load resisteance ohm
