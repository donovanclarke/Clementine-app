FactoryGirl.define do  factory :post do
    title "MyString"
body "MyText"
  end

  factory :user do
    email "test@newuser.com"
    password "Password123"
  end

  factory :product do
    name "Product Example"
    description "This is a sample product"
  end

  factory :comment do
    rating 1
    body "Excellent!"
    user
    product
  end
end
