# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    id 1.5
    title "MyString"
    category 1
    condition false
    starting_price "9.99"
    fixed_price "9.99"
    is_bid false
  end
end
