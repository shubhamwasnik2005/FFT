% Fast fourier transform
clear all
n =1:1:1000;                % Number of datapoints
fs = 1000.0;                % Sampling Frequency
delta = 1/fs;               % Sampling Time Interval
t = n*delta;                % Time in second
Totaltime = size(n,2) * delta;

f = 77;                     % Frequency of signal
y = 10*sin(2*pi*f*t);       % Signal

yfft = 2/1000*fft(y);       % Fourier Transform with amplification (2/number of samples) )
yabs = abs(yfft);

delf = 1/Totaltime;         % Frequency of resolution
nf = 1:1:500;               % Frequency result is ploted till N/2 data ponits
fk = delf.*nf;              % Frequency values

plot(fk,yabs(1:size(nf,2)));
xlabel('Frequency Hz')
ylabel('Amplitude')



