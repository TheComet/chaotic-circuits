% Double scroll appears with these values, according to the original paper
C1 = 1/9;
C2 = 1;
L  = 1/7;
G  = 0.7;
Bp = 1;
m0 = -0.5;
m1 = -0.8;

% Want to control R with a digital potentiometer. Most are in the range 10k-50k.
% To achieve this, we rescale the amount of current that needs to flow in the
% circuit by factor k0.
target_R = 5e3;
sc = 1/target_R / G;

% L will be unrealistically large. We can reduce the required inductance by
% rescaling time by factor k1.
st = 1e-5;

% Rescale current
G = G * sc;
C1 = C1 * sc;
C2 = C2 * sc;
L = L / sc;

% Since current is reduced by factor k, the iv curves also scale by the same amount
m0 = m0 * sc;
m1 = m1 * sc;

% Rescale time
fprintf('Discrete components\n');
fprintf('-------------------\n');
C1 = C1 * st;
C2 = C2 * st;
L = L * st;

R = 1/G;
C1, C2, R

% Calculate components for L
fprintf('\n');
fprintf('L Op-Amp\n');
fprintf('--------\n');
L
C = 100e-9
R1 = 1e3
R2 = 1e3
R3 = 1e3
LR = L*R2 / (R1*R3*C)

% NR1
fprintf('\n');
fprintf('Non-linear Resistors\n');
fprintf('--\n');

NR1 = -1/m0
NR2 = -1/(m1-m0)

%%
Rmin = 17e3;
Rmax = 24e3;
Rpot = target_R;

Rs = Rmin
Rp = (Rmax-Rs)*R / (R-Rmax+Rs)

