function [ dial ] = InstructionDB(  )
%SecondInstruction Summary of this function goes here
%   Detailed explanation goes here

StartPosition = [300,300];
positionBox = [StartPosition , 420 , 300];
positionTxt = [10 20 400 200];
positionBtn = [160 15 100 35];
txt_content = ['A database of disturbed signales can be generated. You can '...
               'create a DB that contatins the entire list of disturbs '...
               '(uniformly distributed) or build a customized one'];

dial = dialog('Position',positionBox,'Name','DataBase Creation');
%dial.Color = [0 ,0.1 ,0.35];
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

