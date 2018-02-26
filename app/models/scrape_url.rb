class ScrapeUrl < ApplicationRecord
  require 'nokogiri'
  require 'open-uri'
  validates :url, presence: true
  has_many :scrape_url_contents


  def scrape_and_store_url
    # Fetch and parse HTML document
    doc = Nokogiri::HTML(open(url))
    doc.search('h1').each do |h1_el|
      self.scrape_url_contents.create(element_type: "h1", element_content: h1_el.content)
    end

    doc.search('h2').each do |h2_el|
      self.scrape_url_contents.create(element_type: "h2", element_content: h2_el.content)
    end

    doc.search('h3').each do |h3_el|
      self.scrape_url_contents.create(element_type: "h3", element_content: h3_el.content)
    end
  end
end
