FactoryGirl.define do
  factory :assignment do
    user_id 1
    task_id 1
  end
  factory :user do
    name "MyString"
  end
  factory :family do
    name "MyString"
  end
end
