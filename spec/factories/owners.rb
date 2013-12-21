# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name 'ExampleFirst'
    last_name 'ExampleLast'
    email 'hereisan@example.com'
  end
end
