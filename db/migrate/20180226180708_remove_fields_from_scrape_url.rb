class RemoveFieldsFromScrapeUrl < ActiveRecord::Migration[5.1]

  def change
    remove_column :scrape_urls, :h1_content, :string
    remove_column :scrape_urls, :h2_content, :string
    remove_column :scrape_urls, :h3_content, :string
  end

end
