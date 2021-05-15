FactoryBot.define do
  factory :activity do
    title { "MyString" }
    body { "MyString" }
    time { "MyString" }
    price { 1 }
    price_for_child { 1 }
    price_for_one { 1 }
    image_id { "MyString" }
    display { false }
  end
end
