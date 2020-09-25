function [ t1,t2 ] = rand_t1_t2( Tcycle , signal_label )

randt1 = 0 + rand*(10*Tcycle - 0);
randt2 = randt1 + rand*(10*Tcycle - 0);

interval = abs(randt2 - randt1);

switch signal_label

    case 'Oscillatory transient'
        iterval_limits = [ 0.5*Tcycle  , 3*Tcycle ];
    case 'Impulsive Transient' 
        iterval_limits = [ Tcycle/20  , Tcycle/10 ];
    case  {'Spike', 'Notch'}
        iterval_limits = [ 0.01*Tcycle , 0.05*Tcycle ];
        randt1 = 0 + rand*(0.5*Tcycle);
        randt2 = randt1 + rand*(0.5*Tcycle);
    otherwise
        iterval_limits = [ Tcycle , 9*Tcycle ];        
end

while interval < iterval_limits(1) || interval > iterval_limits(2) % t2-t1 isnt legal
    if strcmp(signal_label,'Spike') || strcmp(signal_label,'Notch')
        randt1 = 0 + rand*(0.5*Tcycle);
        randt2 = randt1 + rand*(0.5*Tcycle);
    else
        randt1 = 0 + rand*(10*Tcycle - 0);
        randt2 = randt1 + rand*(10*Tcycle - 0);
    end% if's end

    interval = abs(randt2 - randt1);

end % while's end

t1 = randt1 ;
t2 = randt2;

end

