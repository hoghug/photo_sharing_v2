# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    user 'username'
    email 'username@string.com'
    password "foobar"
    password_confirmation { |u| u.password }
  end
end
