clear all; clc; close all

[d, fs] = audioread('rat.wav');
info = audioinfo ('rat.wav');

SPL = splMeter('TimeWeighting','Fast', 'FrequencyWeighting',...
    'A-weighting', 'SampleRate',fs, 'TimeInterval',2);

d = d(:, 1);                        
size(d);

fmin = 500;
fmax = 10000;

long = highpass(d, fmin, fs);
high = lowpass(d, fmax, fs);
L = 1024/2;
smoothY = sgolayfilt(high, 7, 27);

t = 0:seconds(1/fs):seconds(info.Duration);
t = t(1:end-1);
max = 189089;

SPL(d);
plot(t, SPL(d))
ylim([0 60])
grid on
xlabel('Time(s)')
ylabel('SPL(dBA)')

