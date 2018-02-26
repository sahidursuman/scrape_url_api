require 'rails_helper'

RSpec.describe ScrapeUrl, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  it { should validate_presence_of(:url) }

  it 'has a valid factory' do
	expect(build(:scrape_url)).to be_valid
  end
end
