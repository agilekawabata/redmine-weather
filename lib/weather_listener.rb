class WeatherListener < Redmine::Hook::ViewListener
  def view_layouts_base_sidebar(context)
    forecast = WeatherHacks.lwws(WeatherSetting.first.city.name, :tomorrow)

    html = "<p>#{WeatherSetting.first.city.name}の天気:#{forecast.telop}<br />"
    html += "#{I18n.l(forecast.publictime, :format => :short)}発表</p>"
    html
  end
end