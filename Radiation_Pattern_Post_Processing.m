%%Experiment 4/10/2019
%Purpose of the experiment : Draw the E-field polar pattern without the position controller 
%19-angles
%Transmitter Port2 : BHA 9118 Horn ANT
%Receiver Port1: Yagi ALX-4000
%Distance : 3 meters
%Frequency : 1 GHz
%Output RF Power : 0dBm
%Measuring Quatity : S12

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Measured S12 using VNA for different angles of phi
S12 = [-53 -48 -43 -38 -37 -37.3 -39.1 -43 -47.5 -53.5 -53.6 -52.4 -53 -49 -51.2 -54.3 -53.4 -50.7 -51.2];
phi = 0:20:360;

%Transmitted power in mW
Ptransmit = 1;
Ratio_S12 =  S12/10;
coef  = 10.^Ratio_S12;

%Received power in mW
Preceived = Ptransmit*coef;
normalisedPat = 10*log10(Preceived/max(Preceived));
polarplot(degtorad(phi),normalisedPat)
title('Measured 2-D E-Field Radiation Pattern of Horn at 1GHz')
rlim([min(normalisedPat)-4 max(normalisedPat)+1])
%polarplot(degtorad(phi),Preceived)

%polarplot(degtorad(phi),coef)

%%
clc
clear all


%%Experiment 4/13/2019
%Purpose of the experiment : Draw the E-field polar pattern without the position controller 
%73-angles
%Transmitter Port2 : BHA 9118 Horn ANT
%Receiver Port1: Yagi ALX-4000
%Distance : 3 meters
%Frequency : 1 GHz
%Output RF Power : 0dBm
%Measuring Quatity : S12

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
S12 = [-36.9 -36.9 -37.2 -37.9 -38.3 -38.9 -39.7 -40.6 -41.7 -42.9 -44.1 -45.5 -46.8 -48.1 -49.7 -51.1 -52.2 -52.9 -53.4 -53.7 -54 -54.2 -54 -54.4 -55 -55.5 -56.1 -56.5 -56 -53.8 -52.5 -50.7 -49.9 -48.8 -48.3 -47.9 -47.6 -47.5 -47.3 -47.7 -49.9 -50.7 -51.5 -52 -52.5 -54 -54.2 -54.6 -54.5 -54.3 -54.5 -54.9 -55 -55.6 -55 -55.2 -54.2 -52.6 -50.9 -49.3 -47.4 -45.6 -43.9 -42.6 -41.3 -40.2 -39.2 -38.4 -37.9 -37.4 -37.2 -36.9 -36.9];
S21 = [-37.2 -37.4 -37.6 -38 -38.3 -39 -39.7 -40.7 -41.8 -43 -44.2 -45.6 -46.9 -48.2 -49.8 -51.2 -52.2 -53 -53.4 -53.8 -54 -54.2 -54 -54.3 -55 -55.6 -56.3 -56.6 -56 -54 -52.6 -50.8 -50 -49 -48.4 -48 -47.5 -47.6 -47.4 -47.8 -50 -50.8 -51.6 -52.2 -52.6 -54.1 -54.3 -54.7 -54.6 -54.4 -54.6 -55 -55.2 -55.7 -55.1 -55.2 -54.2 -52.7 -51 -49.4 -47.5 -45.7 -44 -42.7 -41.4 -40.3 -39.3 -38.5 -38 -37.5 -37.2 -37 -37];
phi = 0:5:360;
Ptransmit = 1;

Ratio_S21 =  S12/10;
coef  = 10.^Ratio_S21;

%Received power in mW
Preceived = Ptransmit*coef;

%normalise the radiation pattern max=0dB
normalisedPat = 10*log10(Preceived/max(Preceived));

polarplot(degtorad(phi),normalisedPat)
title('Measured 2-D E-Field Radiation Pattern of Horn at 1GHz')
rlim([min(normalisedPat)-4 max(normalisedPat)+1])


%%
plot(phi,normalisedPat)
xlabel('Angle(°)')
ylabel('Normalised Power (dB)')
xlim([0 360])
grid on
title('Measured 2-D E-Field Polar Pattern of Horn at 1GHz')
 

