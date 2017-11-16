FactoryGirl.define do
  factory :article do
    name {|n| "Article #{n}"}
    impressions_count 1
  end
end
