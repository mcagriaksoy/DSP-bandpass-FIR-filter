# DSP-bandpass-FIR-filter

# Abstract

Filter design is very important in many areas But is especially indispensable in electronics. Filters are used in many areas, from voice recognition, communication, image processing to deep learning algorithms. In this project, many filters have been designed by using Matlab program and made ready for use. In this project, FIR bandpass filters have been emphasized.


# Digital Signal Processing Hardware Lecture (eem478) Final Project

The aim of this project is to teach the student the filter design and the usage area of the filter. FIR filter and bandpass filters are used in the project. FIR filter design is used with window method. More detailed information will be given in the following stages.
During the project, Matlab R2018b program and Windows 10 x64 1089 operating system were used as development environment.


# Filter Design Tool (FDT) Output

16th Degree FIR BandPass Filter


![Project](https://github.com/mcagriaksoy/DSP-bandpass-FIR-filter/blob/master/16th%20order%20-%20tool.JPG)


Filter's Impulse Response


![Project](https://github.com/mcagriaksoy/DSP-bandpass-FIR-filter/blob/master/untitled3.jpg)

# Conclusion

The purpose of this project is to design MATLAB functions and tools and to design filters of different degrees. Here we have identified and compared 6 filters with FDT and functions. We put an input signal into the filter and looked at the result. Our goal here was to compare the results and to understand the characteristics of the filter. As a result, we found that as the filter orders increases, the filter works better and better reflects the transition properties. In addition, we observed that when we sampled the filter input, output becomes slightly different due to some data that lost from converting to discrete signal. 

500th degree fir filter output:
![Project](https://github.com/mcagriaksoy/DSP-bandpass-FIR-filter/blob/master/500th.JPG)

In our scenario, input x(t) has an accumulator function which represents the for loop on MATLAB. We need to convert x(t) to x(n) with sampling freq of 40kHz. Sampling means steps actually; the signal will be divided pieces every 40kHz frequency points or 1/40kHz time which equals to Ts. After calculate x(n) we can easily put the input values into the bandpass FIR filter. So that, we need to convolve x(n) and h(n) to find y(n). Because multiplication in time domain equal to convolution process. After these calculations over we can easily find the output of filter that called y(n). And thanks to some functions like "fvtool" we can print magnitude and phase response of filters, outputs and input.
