function [  ] = GuiManual( app )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

switch app.InstructionsNum
    case 1 
        % msg - List of disturbs
%       pause(1.5); %Timing - so that the popup will be on top of the app
        uiwait(InsructionFirst());
        app.InstructionsNum = app.InstructionsNum + 1;
        % Turn on relevant configs :
        app.UIAxes.Visible = 'on';

    case 2 
        % msg - Slider's usage
        app.InstructionsNum = app.InstructionsNum + 1;
        uiwait(SlidersInstruction()) ;
        
        % msg - TimeEdit's usage
        signals_without_time_choise = {'Normal','Harmonics','Flicker','Flicker+Harmonics'};
        if isempty(find( strcmp(app.signal_label,signals_without_time_choise) ))
            app.InstructionsNum = app.InstructionsNum + 1;
            uiwait(TimeEditInstruction());
            temp = imshow('TimesTable.JPG');
        end
        
    case 3
        % msg - TimeEdit's usage
        signals_without_time_choise = {'Normal','Harmonics','Flicker','Flicker+Harmonics'};
        if isempty(find( strcmp(app.signal_label,signals_without_time_choise) ))
            app.InstructionsNum = app.InstructionsNum + 1;
            uiwait( TimeEditInstruction() );
            temp = imshow('TimesTable.JPG');
        end
        
   case 4
        % msg - Noise, NumOfCycles
        app.InstructionsNum = app.InstructionsNum + 1;
        app.Noise.Visible = 'on';
        app.NoiseSlider.Visible = 'on'; app.NoiseSliderLabel.Visible = 'on';
        app.Frequency.Visible = 'on';
        app.NumOfCycles.Visible = 'on'; app.NumOfCyclesLabel.Visible = 'on';
        uiwait(OthersInstruction()) ;
    case 5
        % msg - DB creator
        app.CreateDataBase.Visible='on';
        app.InstructionsNum = app.InstructionsNum + 1;        
        uiwait(InstructionDB());

end%switch
end%func

