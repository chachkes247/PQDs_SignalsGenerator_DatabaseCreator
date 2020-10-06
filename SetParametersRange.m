function [  ] = SetParametersRange( app )
% Parameters initial values :
% occurs in app designer

% Parameters Dynamic range :
switch app.signal_label

    case 'Normal' % pure sine wave
        defaultOffVisibality(app); %TODO : maybe there is a way to write this function as along automatic command instead of a func
        %app.AlphaSlider.Limits = [1,100];
             
    case 'Sag'      
        app.AlphaSlider.Limits = [0.1,0.9];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
             
    case 'Swell'
        app.AlphaSlider.Limits = [0.1,0.8];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
   
    case 'Interruption'
        app.AlphaSlider.Limits = [0.9,1.0];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
        
    case 'Harmonics'
        app.Alpha3Slider.Limits = [0.05,0.15];
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
              
    case 'Oscillatory transient'
        app.AlphaSlider.Limits = [0.1,0.8];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);

    case 'Impulsive Transient'
        app.AlphaSlider.Limits = [0,0.414];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);

        
    case 'Sag+Harmonics'
        %TODO : alpha limits...
        app.Alpha3Slider.Limits = [0.05,0.15];
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        %         alpha1= sqrt(1- alpha3^2-alpha5^2-alpha7^2);
             
    case 'Swell+Harmonics'
        %TODO : alpha limits...
        app.Alpha3Slider.Limits = [0.05,0.15];
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        %         alpha1= sqrt(1-alpha3^2-alpha5^2-alpha7^2);
        
    case 'Flicker'
        app.AlphaFlickerSlider.Limits = [0.1,0.2];
        app.AlphaFlickerSlider.Value = app.AlphaFlickerSlider.Limits(1);
        app.BetaSlider.Limits  = [5,20];
        app.BetaSlider.Value = app.BetaSlider.Limits(1);

    case {'Notch','Spike'}
        app.KSlider.Limits = [0.1,0.4];
        app.KSlider.Value = app.KSlider.Limits(1);
        
    case 'Flicker+Harmonics'
        app.AlphaFlickerSlider.Limits = [0.1,0.2];
        app.AlphaFlickerSlider.Value = app.AlphaFlickerSlider.Limits(1);
        app.BetaSlider.Limits  = [5,20];
        app.BetaSlider.Value = app.BetaSlider.Limits(1);
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
        
    case 'Interruption+Harmonics'
        app.AlphaSlider.Limits = [0.9,1.0];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
        app.Alpha3Slider.Limits = [0.05,0.15];
        app.Alpha3Slider.Value = app.Alpha3Slider.Limits(1);
        app.Alpha5Slider.Limits = [0.05,0.15];
        app.Alpha5Slider.Value = app.Alpha5Slider.Limits(1);
        app.Alpha7Slider.Limits = [0.05,0.15];
        app.Alpha7Slider.Value = app.Alpha7Slider.Limits(1);
   
    case {'Flicker+Sag','Flicker+Swell'}
        app.AlphaFlickerSlider.Limits = [0.1,0.2];
        app.AlphaFlickerSlider.Value = app.AlphaFlickerSlider.Limits(1);
        app.BetaSlider.Limits  = [5,20];  
        app.BetaSlider.Value = app.BetaSlider.Limits(1);
        
        app.AlphaSlider.Limits = [0.1,0.9];
        app.AlphaSlider.Value = app.AlphaSlider.Limits(1);
  
end %switch

end%func


