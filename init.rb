require 'redmine'
require 'weatherhacks'
require 'weather_listener'

Redmine::Plugin.register :redmine_weather do
  name 'Redmine Weather plugin'
  author 'Mitsuyoshi Kawabata'
  description 'Weather plugin for Japan'
  version '0.0.1'

  menu :account_menu, :weather, { :controller => 'weathers', :action => 'edit' }, :caption => "天気設定", :last => true
end
