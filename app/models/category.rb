class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories


  def self.order_by_article_impressions
    self.joins(:articles)
            .order('SUM(articles.impressions_count) DESC')
            .group(:id)
  end

  def self.top_5_visited
    order_by_article_impressions.limit(5)
  end
end
