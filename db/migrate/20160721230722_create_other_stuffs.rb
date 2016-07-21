class CreateOtherStuffs < ActiveRecord::Migration
  def change
    create_table :other_stuffs do |t|
      t.text :my_junk

      t.timestamps
    end
  end
end
