function [ dial_1 ] = InsructionFirst(  )
%FIRSTINSRUCTION Summary of this function goes here
%   Detailed explanation goes here

positionFirstBox = [300 300 350 250];%[300 300 250 150];
positionFirstTxt = [20 80 310 120];%[20 80 210 40]
positionFirstBtn = [135 20 100 45];
% txt_content = 'Welcome to the power quality disturbs Explorer & Creator!';
% txt_content = [txt_content newline 'Explore a power quality disturb from the list'];
txt_content = ['Welcome to the power quality disturbs Explorer & Creator',...
              sprintf('\n\n'),...
              'You may analyze any signal from the following Disturbs List: '];

%First way : Config the dialogbox via the "constructo" 
dial_1 = dialog('Position',positionFirstBox,'Name','Hello !');

txt = uicontrol('Parent',dial_1,...
    'Style','text',...
    'Position',positionFirstTxt,...
    'String',txt_content);
 % This is a second way to set up parameter - using the handler.
txt.FontSize = 14;

btn = uicontrol('Parent',dial_1,...
    'Position',positionFirstBtn,...
    'String','OK',...
    'Callback','delete(gcf)');

end

