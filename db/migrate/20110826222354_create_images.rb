class CreateImages < ActiveRecord::Migration
  def change
    create_table :imagine_images do |t|
      t.string :file_name
      t.string :file_uid
      t.integer :album_id
    end
  end
end
