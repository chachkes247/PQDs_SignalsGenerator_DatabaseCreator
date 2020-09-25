 function [  ] = defaultOffVisibality( app )
%PARAMETERSVISIBALITY Summary of this function goes here
%   Detailed explanation goes here
if app.FirstUse
    app.FirstUse=false;
    app.UIAxes.Visible = 'off';
    app.Noise.Visible = 'off';
    app.NoiseSlider.Visible = 'off'; app.NoiseSliderLabel.Visible = 'off';
    app.Frequency.Visible = 'off';
    app.NumOfCycles.Visible = 'off'; app.NumOfCyclesLabel.Visible = 'off';
    app.CreateDataBase.Visible='off'; 
    app.TimesTable.Visible = 'off';
end
    %app.PlotSignalButton.Visible = 'off'; % Optional

app.TimeDiff.Visible = 'off';
app.TimesTable.Visible = 'off';

app.AlphaSlider.Visible = 'off';    app.AlphaSliderLabel.Visible = 'off';
app.AlphaFlickerSlider.Visible = 'off';    app.AlphaFlickerSliderLabel.Visible = 'off';
app.BetaSlider.Visible = 'off';     app.BetaSliderLabel.Visible = 'off';
app.Alpha3Slider.Visible = 'off';   app.Alpha3SliderLabel.Visible = 'off';
app.Alpha5Slider.Visible = 'off';   app.Alpha5SliderLabel.Visible = 'off';
app.Alpha7Slider.Visible = 'off';   app.Alpha7SliderLabel.Visible = 'off';
app.TauSlider.Visible = 'off';      app.TauSliderLabel.Visible = 'off'; 
app.FnSlider.Visible = 'off';       app.FnSliderLabel.Visible = 'off'; 
app.KSlider.Visible = 'off';        app.KSliderLabel.Visible = 'off';

app.t1.Visible = 'off';  app.t1Label.Visible = 'off';
app.t2.Visible = 'off';  app.t2Label.Visible = 'off';

end

