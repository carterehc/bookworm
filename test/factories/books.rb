FactoryBot.define do
  factory :book do
    title "MyString"
    yr_read "2018-03-22"
    yr_published "2018-03-22"
    read false
    own false
    ISBN "MyString"
    edition 1
    want_own false
    want_read false
    times_read 1
  end
end
