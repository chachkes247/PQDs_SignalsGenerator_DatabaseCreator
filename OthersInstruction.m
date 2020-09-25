function [ dial ] = OthersInstruction(  )
%OthersInstruction Summary of this function goes here
%   Detailed explanation goes here

StartPosition = [300,300];
positionBox = [StartPosition , 350 , 200];
positionTxt = [20 80 310 60];
positionBtn = [125 15 100 35];
txt_content = 'In addition, general parameters can be set and WGN can be added';

dial = dialog('Position',positionBox,'Name','Using the GUI');
dial.Color = [0 ,0.15 ,0.15];
txt = uicontrol('Parent',dial,...
    'Style','text',...
    'Position',positionTxt,...
    'String',txt_content);
txt.FontSize = 14;

btn = uicontrol('Parent',dial,...
    'Position',positionBtn,...
    'String','Got it',...
    'Callback','delete(gcf)');

end



