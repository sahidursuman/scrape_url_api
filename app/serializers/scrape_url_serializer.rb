class ScrapeUrlSerializer < ActiveModel::Serializer
  attributes :id, :url


  class ScrapeUrlContentSerializer < ActiveModel::Serializer
    attributes :element_type, :element_content
  end

  has_many :scrape_url_contents, serializer: ScrapeUrlContentSerializer, key: :contents

end