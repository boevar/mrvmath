class CreateSkeds < ActiveRecord::Migration
  def self.up
    create_table :skeds do |t|
      t.string :code
      t.string :gr
      t.string :m1
      t.string :m2
      t.string :m3
      t.string :m4
      t.string :m5
      t.string :t1
      t.string :t2
      t.string :t3
      t.string :t4
      t.string :t5

      t.timestamps
    end
  end

  def self.down
    drop_table :skeds
  end
end
