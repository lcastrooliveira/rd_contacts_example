FactoryGirl.define do
  factory :user do
    name 'Admin'
    email 'admin@admin.com'
    password '12345678'
    password_confirmation '12345678'
  end
end
