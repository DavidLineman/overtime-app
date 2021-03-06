FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed "WorkPerformed"
    daily_hours 3.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    daily_hours 0.5
    user
  end
end