FactoryGirl.define do
  factory :post do
    body %Q{
--Lorem ipsum-- dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
--Dolore-- magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
--Duis aute-- irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur
    }
  end
end
