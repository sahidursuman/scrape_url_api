class CreateScrapeUrlContents < ActiveRecord::Migration[5.1]
  def change
    create_table :scrape_url_contents do |t|
      t.references :scrape_url, foreign_key: true
      t.string :element_type
      t.string :element_content

      t.timestamps
    end
  end
end
