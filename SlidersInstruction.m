function [ dial_2 ] = SlidersInstruction(  )
%SecondInstruction Summary of this function goes here
%   Detailed explanation goes here

StartPosition = [300,300];
positionBox = [StartPosition , 350 , 200];
positionTxt = [20 80 310 60];
positionBtn = [125 15 100 35];
txt_content = 'Disturb`s parameters can be set using sliders';

dial_2 = dialog('Position',positionBox,'Name','Using the GUI');
dial_2.Color = [0 ,0.1 ,0.1];
txt = uicontrol('Parent',dial_2,...
    'Style','text',...
    'Position',positionTxt,...
    'String',txt_content);
txt.FontSize = 14;

btn = uicontrol('Parent',dial_2,...
    'Position',positionBtn,...
    'String','Got it',...
    'Callback','delete(gcf)');

end

