clear, clc, close all

[x1, fs1] = audioread('rat.wav');

x1 = 15*x1(:, 1);                        
N1 = length(x1);                      
t1 = (0:N1-1)/fs1;                     

%%%%%% plot the signal waveform
subplot(2, 1, 1);
plot(t1, x1, 'k')
xlim([0 max(t1)])
ylim([-1 1])
grid on
set(gca, 'FontName', 'Arial', 'FontSize', 14)
xlabel('Time (s)')
ylabel('Amplitude')
title('Normalized amplitude')

%%%%%% plot the signal spectrogram
subplot(2, 1, 2);
spectrogram(x1, 1024, 768, 1024, fs1, 'yaxis')
ylim([0 8])
box on
set(gca, 'FontName', 'Arial', 'FontSize', 14)
colormap gray
xlabel('Time (s)')
ylabel('Frequency (kHz)')
title('Spectrogram')

h = colorbar;
set(h, 'FontName', 'Arial', 'FontSize', 14)
ylabel(h, 'Magnitude, dB')




