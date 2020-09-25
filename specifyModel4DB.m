function [  ] = specifyModel4DB( GUIapp,DBapp,disturb_num_in_the_list )
%SPECIFYMODEL4DB Summary of this function goes here
%   Detailed explanation goes here

if strcmp(DBapp.TabGroup.SelectedTab.Title,'All Disturbs')
    NumOfVec = ceil((DBapp.NumOfVecAll.Value)./(length(GUIapp.ListBox.Items)));
    FreqButton = DBapp.FreqAll.SelectedObject.Text;
    NumOfCycButton = DBapp.NumOfCyclesAll.SelectedObject.Text;
    signal_label = DBapp.signal_label;
    NoiseButton = DBapp.NoiseAll.SelectedObject.Text;
    switch DBapp.NoiseAll.SelectedObject.Text
        case 'No noise'
            SNR_level = inf ;
        case 'AWGN (set SNR)'
            SNR_level = DBapp.SNRsliderAll.Value;
        case 'AWGN (random SNR)'
            SNR_level = randParameter(DBapp.SNRsliderAll.Limits(1),DBapp.SNRsliderAll.Limits(2));
    end
else
    NumOfVec =  DBapp.NumOfVecSpecific.Value;
    FreqButton = DBapp.FreqSpecific.SelectedObject.Text;
    NumOfCycButton = DBapp.NumOfCyclesSpecific.SelectedObject.Text;
    signal_label = GUIapp.signal_label;
    NoiseButton = DBapp.NoiseSpecific.SelectedObject.Text;
    switch DBapp.NoiseSpecific.SelectedObject.Text
        case 'No noise'
            SNR_level = inf ;
        case 'AWGN (set SNR)'
            SNR_level = DBapp.SNRsliderSpecific.Value;
        case 'AWGN (random SNR)'
            SNR_level = randParameter(DBapp.SNRsliderSpecific.Limits(1),DBapp.SNRsliderSpecific.Limits(2));
    end
end

switch FreqButton
    case '50 Hz'
        f = 50 ;
    case '60 Hz'
        f = 60 ;
    case 'Random'
        if randi([1 2],1)==1
            f = 50;
        else
            f = 60;
        end
end%Switch

switch NumOfCycButton
    case '10'
        NumOfTcycles = 10 ;
    case 'Random'
        NumOfTcycles = randi([3 10],1) ;
end%Switch

w = 2*pi*(f);
Tcycle = 1./f;

t_end = NumOfTcycles * Tcycle;
t = [GUIapp.t_start : GUIapp.dt : t_end ];
t = t(1:end-1);

for i=1:NumOfVec %N different signals will be created
    % User's indication about DB creation progress:
    fprintf('signal: %d/%d , disturb:%d/16\n',i,NumOfVec, disturb_num_in_the_list)
    DBapp.Progress.Visible = 'on';DBapp.ProgressLabel.Visible = 'on';
    DBapp.Progress.Value = ['signal: ' ,num2str(i),'/',num2str(NumOfVec),...
                            ' , disturb: ',num2str(disturb_num_in_the_list),'/16' ];
    
    % Random signal's parameters:
    alpha = randParameter(GUIapp.AlphaSlider.Limits(1),GUIapp.AlphaSlider.Limits(2));
    beta = randParameter(GUIapp.BetaSlider.Limits(1),GUIapp.BetaSlider.Limits(2));
    alpha3 = randParameter(GUIapp.Alpha3Slider.Limits(1),GUIapp.Alpha3Slider.Limits(2));
    alpha5 = randParameter(GUIapp.Alpha5Slider.Limits(1),GUIapp.Alpha5Slider.Limits(2));
    alpha7 = randParameter(GUIapp.Alpha7Slider.Limits(1),GUIapp.Alpha7Slider.Limits(2));
    tau = (1E-3)*randParameter(GUIapp.TauSlider.Limits(1),GUIapp.TauSlider.Limits(2));
    Fn = randParameter(GUIapp.FnSlider.Limits(1),GUIapp.FnSlider.Limits(2));
    k = randParameter(GUIapp.KSlider.Limits(1),GUIapp.KSlider.Limits(2));
    alpha_flicker = randParameter(GUIapp.AlphaFlickerSlider.Limits(1),GUIapp.AlphaFlickerSlider.Limits(2));
    
    [t1,t2] = rand_t1_t2(Tcycle,signal_label);
    
    % Create the signal
    [y,yNoisy] = createSignal(signal_label,t,w,alpha,alpha_flicker,...
        beta,alpha3,alpha5,alpha7,tau,Fn,k,t1,t2,SNR_level);
    %DEBUG:plot(y);figure();plot(yNoisy);
    
    if  strcmp(NoiseButton,'No noise')
        signal = y ;
    else
        signal = yNoisy;
    end
    
    % Add signal to DB
    if isempty(DBapp.DataBase(end).labels)
        DBapp.DataBase(1).labels = signal_label;
        DBapp.DataBase(1).signals = signal;
    else
        DBapp.DataBase(end+1).labels = signal_label;
        DBapp.DataBase(end).signals = signal;
    end
    % Radomize DB permutation :
    %app.DataBase(randperm(length(app.DataBase)));
    temp1 = DBapp.DataBase(randperm(length(DBapp.DataBase)));
    temp2 = temp1(randperm(length(temp1)));
    DBapp.DataBase = temp2;
    %TODO? : ADD to the DB struct - parameter's values of each signal? that
    %might be good for the labeling or something
    
end% end of for

end%function


