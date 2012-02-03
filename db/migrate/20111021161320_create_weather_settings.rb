class CreateWeatherSettings < ActiveRecord::Migration
  def self.up
    create_table :weather_settings do |t|
      t.column :city_id, :integer
    end
    
    WeatherSetting.create(:city_id => 1)
  end

  def self.down
    drop_table :weather_settings
  end
end
