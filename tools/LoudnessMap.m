clc; clear all; close all;
% To properly run this code, an audiointerface device must be 
% connected to the computer.

deviceReader = audioDeviceReader;
devices = getAudioDevices(deviceReader);
mic = devices(3);

LD = [];            % LD is sound loudness matrix.
fs = 8000;

for i = 1:5
    for j = 1:5
    a= audiorecorder(fs,8,1,2);  
    disp('Start recording')
    recordblocking(a,2);
    disp('End recording')
    myrec= getaudiodata(a);
    loudness = acousticLoudness(myrec,fs)
    LD(i,j) = loudness;
    formatSpec = 'i=%d, j=%d\n';
    fprintf(formatSpec,i,j);
    pause;
    end
end
                 
M = max(LD,[],'all');
LD_nrm = LD/M;
h = heatmap(LD_nrm,'Colormap',cool);   % h is a sound intensity map.



