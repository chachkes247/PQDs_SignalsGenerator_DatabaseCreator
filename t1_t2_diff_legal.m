function [ legal ] = t1_t2_diff_legal(t1,t2,Tcycle,signal_label)
%T1T2_LIMITS Summary of this function goes here
%   Note : all data is in sec (not ms)

interval = abs(t2 - t1)*1E-3;

switch signal_label

    case 'Oscillatory transient'
        iterval_limits = [ 0.5*Tcycle  , 3*Tcycle ];
    case 'Impulsive Transient'
        iterval_limits = [ Tcycle/20  , Tcycle/10 ];
    case  {'Spike', 'Notch'}
        iterval_limits = [ 0.01*Tcycle , 0.05*Tcycle ];
    case {'Flicker','Harmonics','Flicker+Harmonics','Normal'}
        % These diturbs has no dependency on t2-t1 time diff
        legal = true;
        return ; 
    otherwise
        iterval_limits = [ Tcycle , 9*Tcycle ];        
end

if interval < iterval_limits(1) || interval > iterval_limits(2) % t2-t1 isnt legal 
    
    %popout msg
    legal = false;
else %interval is legal
    legal = true;
end

end % of func
