module Api
  module V1
    class ScrapeUrlsController < ApiController

      def index
        scrape_urls = ScrapeUrl.all
        scrape_urls = scrape_urls.map { |scrape_url| ScrapeUrlSerializer.new(scrape_url) }
        render json: {
                 scrape_urls: scrape_urls,
                 is_success: true
             }, status: :ok
      end

      def create
        @scrape_url = ScrapeUrl.new(scrape_url_params)

        if @scrape_url.save
          @scrape_url.scrape_and_store_url
          render json: {is_success: true}, status: :ok
        else
          render json: @gender.errors, status: :unprocessable_entity
        end
      end

      def show
        scrape_url = ScrapeUrl.find(params[:id])
        render json: {scrape_url: ScrapeUrlSerializer.new(scrape_url), is_success: true}, status: :ok
      end


      private
      def scrape_url_params
        params.require(:scrape_url).permit(:url)
      end
    end
  end
end