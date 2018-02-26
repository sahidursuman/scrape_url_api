class CreateScrapeUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :scrape_urls do |t|
      t.string :url
      t.string :h1_content
      t.string :h2_content
      t.string :h3_content

      t.timestamps
    end
  end
end
