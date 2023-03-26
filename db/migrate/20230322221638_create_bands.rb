class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_enum :genre, ["electronic", "hip-hop", "phonk", "rhythm_and_blues", "house", "edm"]

    create_table :bands do |t|
      t.string "name",
      t.string "release",
      t.enum "band_genre", enum_type: "genre", default "hip-hop", null: false
      t.text "backstory"
      t.timestamps
    end
  end
end
