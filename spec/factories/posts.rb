FactoryGirl.define do 
  factory :post do
    date Date.today
    Rationale "Rationale"
    ocertime_request 3.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    Rationale "content"
    ocertime_request 1.2
    user
  end
end