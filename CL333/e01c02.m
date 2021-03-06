clear all;
clc;

delp1 = [1.773 1.228 0.635 0.355 0.241 0.179];
delp2 = [1.313 0.920 0.354 0.165 0.198 0.1];
delp3 = [1.013 0.928 0.218 0.154 0.103 0.003];
delp4 = [0.130 0.085 0.039 0.030 0.005 0];
delp5 = [0.872 0.454 0.206 0.111 0.093 0.005];
delp6 = [0.015 0.006 0.002 0.001 0.001 0.000];

dia = [0.00315 0.00635 0.009525 0.0015875 0.009525 0.032];

q1 = [5.51 4.38 3.23 2.41 1.96 1.68];
q2 = [32.16 26.16 15.00 9.53 8.5 5];
q3 = [63.0 35.83 29.33 24.5 20.16 3.21];
q4 = [97.83 77.83 59.33 46.66 36.83 26];
q5 = [69.0 49.5 33.5 24.0 21.83 4.16];
q6 = [101.16 66.16 43.33 27.83 15.91 1.68];

rho = 1000;
mew = 0.001;

re = zeros(6,6);
re(1,:) = rho * (q1 ./ (pi * dia(1)^2 / 4)) * dia(1) / (100000 * mew);
re(2,:) = rho * (q2 ./ (pi * dia(2)^2 / 4)) * dia(2) / (100000 * mew);
re(3,:) = rho * (q3 ./ (pi * dia(3)^2 / 4)) * dia(3) / (100000 * mew);
re(4,:) = rho * (q4 ./ (pi * dia(4)^2 / 4)) * dia(4) / (100000 * mew);
re(5,:) = rho * (q5 ./ (pi * dia(5)^2 / 4)) * dia(5) / (100000 * mew);
re(6,:) = rho * (q6 ./ (pi * dia(6)^2 / 4)) * dia(6) / (100000 * mew);

ff = zeros(6,6);
ff(1,:) = delp1 * dia(1) * 10000000000 * 100000 ./ (2 * 0.85 * rho * (q1 ./ (pi * dia(1)^2 / 4)).^2);
ff(2,:) = delp2 * dia(2) * 10000000000 * 100000 ./ (2 * 0.85 * rho * (q1 ./ (pi * dia(2)^2 / 4)).^2);
ff(3,:) = delp3 * dia(3) * 10000000000 * 100000 ./ (2 * 0.85 * rho * (q1 ./ (pi * dia(3)^2 / 4)).^2);
ff(4,:) = delp4 * dia(4) * 10000000000 * 100000 ./ (2 * 0.85 * rho * (q1 ./ (pi * dia(4)^2 / 4)).^2);
ff(5,:) = delp5 * dia(5) * 10000000000 * 100000 ./ (2 * 0.85 * rho * (q1 ./ (pi * dia(5)^2 / 4)).^2);
ff(6,:) = delp6 * dia(6) * 10000000000 * 100000 ./ (2 * 0.85 * rho * (q1 ./ (pi * dia(6)^2 / 4)).^2);

plot(ff(1,:),re(1,:),'-');