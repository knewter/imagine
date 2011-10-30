class CreateImagineTables < ActiveRecord::Migration
  def change
    create_table :imagine_albums do |t|
      t.string :name
    end
    create_table :imagine_images do |t|
      t.string  :file_name
      t.string  :file_uid
      t.integer :album_id
    end
  end
end

