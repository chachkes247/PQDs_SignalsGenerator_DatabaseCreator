function [  ] = SlidersVisibilty( app )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
% Parameters initial values :
% occurs in app designer

%%TODO : Set a min value - app.alpha=MinOfRange for AutoPlotting


% Parameters Dynamic range :
switch app.signal_label
    
    case 'Normal' % pure sine wave
        defaultOffVisibality(app); %TODO : maybe there is a way to write this function as along automatic command instead of a func
        %app.AlphaSlider.Limits = [1,100];
        
    case 'Sag'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';        app.AlphaSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case 'Swell'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case 'Interruption'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case 'Harmonics'
        defaultOffVisibality(app);
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        
    case 'Oscillatory transient'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        app.TauSlider.Visible = 'on';      app.TauSliderLabel.Visible = 'on';
        app.FnSlider.Visible = 'on';       app.FnSliderLabel.Visible = 'on';
        
    case 'Impulsive Transient'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case 'Sag+Harmonics'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case 'Swell+Harmonics'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        %TODO : alpha limits...
        
    case 'Flicker'
        defaultOffVisibality(app);
        app.AlphaFlickerSlider.Visible = 'on';    app.AlphaFlickerSliderLabel.Visible = 'on';
        app.BetaSlider.Visible = 'on';     app.BetaSliderLabel.Visible = 'on';
        
    case {'Notch','Spike'}
        defaultOffVisibality(app);
        app.KSlider.Visible = 'on';        app.KSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case 'Flicker+Harmonics'
        defaultOffVisibality(app);
        app.AlphaFlickerSlider.Visible = 'on';    app.AlphaFlickerSliderLabel.Visible = 'on';
        app.BetaSlider.Visible = 'on';     app.BetaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        
    case 'Interruption+Harmonics'
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.Alpha3Slider.Visible = 'on';   app.Alpha3SliderLabel.Visible = 'on';
        app.Alpha5Slider.Visible = 'on';   app.Alpha5SliderLabel.Visible = 'on';
        app.Alpha7Slider.Visible = 'on';   app.Alpha7SliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
    case {'Flicker+Sag','Flicker+Swell'}
        defaultOffVisibality(app);
        app.AlphaSlider.Visible = 'on';    app.AlphaSliderLabel.Visible = 'on';
        app.AlphaFlickerSlider.Visible = 'on';    app.AlphaFlickerSliderLabel.Visible = 'on';
        app.BetaSlider.Visible = 'on';     app.BetaSliderLabel.Visible = 'on';
        app.t1.Visible = 'on';  app.t1Label.Visible = 'on';
        app.t2.Visible = 'on';  app.t2Label.Visible = 'on';
        
end %switch



end%func
