class WeatherSetting < ActiveRecord::Base
  unloadable
  
  belongs_to :city
end
