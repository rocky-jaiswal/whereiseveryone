# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_status do
    user_id 1
    status_id 1
    comment "MyString"
    status_on "2013-05-26"
  end
end
