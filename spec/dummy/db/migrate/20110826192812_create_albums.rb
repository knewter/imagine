class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :imagine_albums do |t|
      t.string :name
    end
  end
end
