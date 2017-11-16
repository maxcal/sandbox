require 'rails_helper'

RSpec.describe Category, type: :model do
  describe ".order_by_article_impressions" do
    let!(:categories) { create_list(:category, 10) }

    before do
      categories.each_with_index do |c|
        c.articles.create(attributes_for(:article, impressions_count: rand(1..10)))
      end
      categories.last.articles
                .create(attributes_for(:article, impressions_count: 1000))
    end

    it "orders by count of impressions" do
      expect(Category.order_by_article_impressions.first).to eq categories.last
      expect(Category.order_by_article_impressions[])
    end
  end
end
