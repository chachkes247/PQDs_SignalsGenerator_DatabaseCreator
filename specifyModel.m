function [ y,yNoisy ] = specifyModel( app )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

signal_label = app.signal_label;

w = 2*pi*(app.f);
Tcycle = 1/app.f; % [sec]

t_end = app.NumofTcycles * Tcycle;
t = app.t_start : app.dt : t_end ;
t = t(1:end-1);
app.t = t;

%% Sliders data:
alpha = app.AlphaSlider.Value;
alpha3 = app.Alpha3Slider.Value;
alpha5 = app.Alpha5Slider.Value;
alpha7 = app.Alpha7Slider.Value;
alpha_flicker = app.AlphaFlickerSlider.Value;
beta = app.BetaSlider.Value;
tau = (1E-3)*app.TauSlider.Value;% calcs in sec, GUI in ms
Fn = app.FnSlider.Value;
k = app.KSlider.Value;

AWGN_level = app.NoiseSlider.Value;

t1 = (1E-3)*app.t1.Value;% calcs in sec, GUI in ms
t2 = (1E-3)*app.t2.Value;% calcs in sec, GUI in ms

[y,yNoisy] = createSignal(signal_label,t,w,alpha,alpha_flicker,...
                    beta,alpha3,alpha5,alpha7,tau,Fn,k,t1,t2,AWGN_level);
%ADD the plotting here??
%



%TODO? : ADD to the DB struct - parameter's values of each signal? that
%might be good for the labeling or something

% TODO - maybe the varaible app.alpha, app.beta... are unneccessery!

end %end of function

