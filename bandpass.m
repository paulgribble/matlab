function newdata = bandpass(data,samprate,cutoff,order)

% newdata = bandpass(data,samprate,cutoff,order)
%
% performs a bandpass filtering of the input data
% using an nth order zero phase lag butterworth filter
%
% given -> data (data)
%	-> samprate (Hz)
%	-> cutoff freqs (Hz)
%	-> order of filter
%
% returns -> filtered data

if nargin==3 order=2; end;

[B,A] = butter(order/2,cutoff./(samprate/2));

newdata = filtfilt(B,A,data);
