# auscultation
## Overview
Management of pulmonary air leak has been difficult, as methods to assess and locate leaks are limited, contributing to substantially increased length of hospital stay and risk of complications. We discovered that pulmonary air leaks produce sounds with distinct acoustic signatures that can offer diagnostic and prognostic insight. In this manuscript, we report a sound analysis modality that allows accurate assessment of air leak severity and location via acquisition and quantification of air leak sounds recorded directly from injured lungs. Here, we provide MATLAB codes that we generated to assess the air leak sounds from rat and swine lungs with air leak injury. The codes were used to produce some of the figures included in this manuscript, entitled “Sound-guided assessment and localization of pulmonary air leak” (Pinezich et al., Nature Communications, 2021).

## Contents in  /tools/
-	AmpFreq.m : The code used to quantify amplitude and obtain spectrogram of the air leak sounds acquired rat and swine lungs.  
- SPLTime.m : The code used determine sound pressure level (SPL) of the acquired sounds over time. 
- LoudnessMap.m : The code used to measure sound loudness at a measurement point and create a sound intensity heatmap.
- rat.wav : A sample air leak sounds recorded from rat lungs.
- swine.wav : A sample air leak sounds recorded from swine lungs.

## Installation and execution
1. To run the MATLAB codes, install “Signal Processing Toolbox” and “Audio Toolbox”.
2. Ensure the audio files and MATLAB files are stored in the same folder.
3. To use "LoudnessMap.m", an audiointerface device (e.g., RME Fireface 802) has to be connected to the computer.

## Software requirements
The codes were written and tested using MATLAB (version: R2020b) which was running in macOX Big Sur (version: 11.5.1). It is expected that the codes are compatible with Windows, Mac, and Linux operating systems when the toolboxes listed above are properly installed on the computer.

## Hardware requirements
The codes require only a standard computer with sufficient RAM to execute specific operations performed by a user. However, for acceptable performance and speed, a computer with minimum 4 GB of RAM is recommended. The computer used in this study had 32 GB of RAM with 2 GHz Quad-Core CPU and it took less than 5 seconds to complete the sound analysis using the codes and sample sound files.   

## Results
“AmpFreq.m” was used to generate the sound amplitude and frequency plots (Fig. 2f,h and Fig. 3f,h,i). “SPLTime.m” was used to calculate and plot the sound loudness as a function of time (Fig. 2g and Fig. 3g). “LoudnessMap.m” was used to create a sound intensity map (Fig. 4b,d) (Pinezich et al., Nature Communications, 2021).      

