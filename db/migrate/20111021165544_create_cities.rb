class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.column :api_id, :integer
      t.column :name, :string
    end
    
    City.create(:api_id => 1, :name => '大阪')
    City.create(:api_id => 20, :name => '東京')
    City.create(:api_id => 40, :name => '名古屋')
    City.create(:api_id => 80, :name => '那覇')
    City.create(:api_id => 140, :name => '札幌')
  end

  def self.down
    drop_table :cities
  end
end
