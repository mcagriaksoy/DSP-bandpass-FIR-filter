%Mehmet Cagri Aksoy - github.com/mcagriaksoy
%Contact: mcagriaksoy@ya.ru
%%%%%%%%%%%%%%%Part 1%%%%%%%%%%%%%%%%%%%%

% Sampling rate is 40 kHz
sample_rate = 40000;

% Choose filter cutoff frequencies (5 kHz - 10kHz)
cutoff_hz1 = 5000;
cutoff_hz2 = 10000;

% Normalize cutoff frequency (wrt Nyquist frequency)
 
nyq_freq = sample_rate / 2;

cutoff_norm1 = cutoff_hz1 / nyq_freq;
cutoff_norm2 = cutoff_hz2 / nyq_freq;


%Input x(t)
%Determine sampled signal x(n)
t = linspace(0,1,40); %40kHz sampled

input = 0;
for k=1:16
    input = input + ((2^(-k))*cos(1000*k*pi*t) + ((-3)^(-k))*sin(1000*k*pi*t));
    
end
plot(input)
fvtool(fir_coeff,'Analysis','freq') %Magnitude and phase response of input


% FIR filter order (i.e. number of coefficients - 1)
order = 4;

% filter coefficients, there are (number of sample+1)
fir_coeff = fir1(order,[cutoff_norm1 cutoff_norm2]);

% show
freqz(fir_coeff,1,512)
impz(fir_coeff,1,[],100) %impulse response of filter
fvtool(fir_coeff,'Analysis','freq') %Magnitude and phase response of filter

output = conv(input, fir_coeff);
fvtool(output,'Analysis','freq') %Magnitude and phase plots of x(t), x(n)
figure




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% FIR filter order (i.e. number of coefficients - 1)
order = 8;

% filter coefficients, there are (number of sample+1)
fir_coeff1 = fir1(order, [cutoff_norm1 cutoff_norm2]);

% show
freqz(fir_coeff1,1,512)
impz(fir_coeff1,1,[],100) %impulse response of filter
fvtool(fir_coeff1,'Analysis','freq') %Magnitude and phase response of filter

output1 = conv(input, fir_coeff1);
fvtool(output1,'Analysis','freq') %Magnitude and phase plots of x(t)

figure

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% FIR filter order (i.e. number of coefficients - 1)
order = 16;

% filter coefficients, there are (number of sample+1)
fir_coeff2 = fir1(order, [cutoff_norm1 cutoff_norm2]);

% show
freqz(fir_coeff2,1,512)
impz(fir_coeff2,1,[],100) %impulse response of filter
fvtool(fir_coeff2,'Analysis','freq') %Magnitude and phase response of filter

output2 = conv(input, fir_coeff2);
fvtool(output2,'Analysis','freq') %Magnitude and phase plots of x(t)

