# auscultation
## Overview
Management of pulmonary air leak has been difficult, as methods to assess and locate leaks are limited, contributing to substantially increased length of hospital stay and risk of complications. We discovered that pulmonary air leaks produce sounds with distinct acoustic signatures that can offer diagnostic and prognostic insight. In this manuscript, we report a sound analysis modality that allows accurate assessment of air leak severity and location via acquisition and quantification of air leak sounds recorded directly from injured lungs. Here, we provide MATLAB codes that we generated to assess the air leak sounds from rat and swine lungs with air leak injury. The codes were used to produce some of the figures included in this manuscript, entitled “Sound-guided assessment and localization of pulmonary air leak” (Pinezich et al., Nature Communications, 2021).

## Contents in  /tools/
-	AmpFreq.m : The code used to quantify amplitude and obtain spectrogram of the air leak sounds acquired rat and swine lungs.  
- SPLTime.m : The code used determine sound pressure level (SPL) of the acquired sounds over time. 
- LoudnessMap.m : The code used to measure sound loudness at a measurement point and create a sound intensity heatmap.
- rat.wav : A sample air leak sounds recorded from rat lungs.
- swine.wav : A sample air leak sounds recorded from swine lungs.

## Installation
- To run the MATLAB codes, download all the files provided in the tools folder and save them in a folder on your computer. This will take less than a minute. 
- Ensure the MATLAB files, sample sound files, and any audio files to be tested are stored in the same folder.
- Ensure “Signal Processing Toolbox” and “Audio Toolbox” are installed along with MATLAB software. This will take approximately 10 minutes, although it can depend on the internet speed.
- Note that an audio interface device (e.g., RME Fireface 802) and a microphone (e.g., Sony ECM-77B) have to be connected to the computer to run "LoudnessMap.m". On the other hand, "AmpFreq.m" and "SPLTime.m" can be excuted with any pre-acquired sound files. 

## Software requirements
The codes were written and tested using MATLAB (version: R2020b) which was running in macOX Big Sur (version: 11.5.1). It is expected that the codes are compatible with Windows, Mac, and Linux operating systems when the Signal Processing Toolbox and Audio Toolbox are properly installed on the computer.

## Hardware requirements
-	Computer: The codes require only a standard computer with sufficient RAM to execute specific operations performed by a user. However, for acceptable performance and speed, a computer with minimum 4 GB of RAM is recommended. The computer used in this study had 32 GB of RAM with 2 GHz Quad-Core CPU.   
-	Sound recording system: To acquire sounds for real-time analysis or postprocessing, microphone, amplifier, and audio interface are needed. In this study, we used Sony ECM-77B microphone, Black Lion B12A amplifier, and RME Fireface 802 audio interface have been used.    

## Demo and instructions for use
“AmpFreq.m” and "SPLTime.m" are currently written such that "rat.wav" provided as a sample sound files can be imported, processed, and plotted. To test different sound file, change the file name in the code accordingly. Notably, in the manuscript, "AmpFreq.m" was used to generate the sound amplitude and frequency plots (Fig. 2f,h and Fig. 3f,h,i) while “SPLTime.m” was used to calculate and plot the sound loudness as a function of time (Fig. 2g and Fig. 3g). Meanwhile, running “LoudnessMap.m” require a sound recording system connected to the computer. The code was used to create a sound intensity map in this study (Fig. 4b,d). It is expected that it will take less than 5 seconds to complete the sound analysis and data plotting using the codes and sample sound files provided.
