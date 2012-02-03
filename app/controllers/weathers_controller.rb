class WeathersController < ApplicationController
  unloadable

  def edit
    @weather_setting = WeatherSetting.first
  end
  
  def update
    @weather_setting = WeatherSetting.first
    if request.put? and @weather_setting.update_attributes(params[:weather_setting])
      flash[:notice] = l(:notice_successful_update)
      redirect_to :action => 'edit', :id => @weather_setting
    else
      render :action => 'edit'
    end
  end
  
end
