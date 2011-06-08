class CreateDesigns < ActiveRecord::Migration
  def self.up
    create_table :designs do |t|
      t.string :name
      t.text :data, :limit => 4294967295

      t.timestamps
    end
  end

  def self.down
    drop_table :designs
  end
end
