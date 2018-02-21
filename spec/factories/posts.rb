FactoryGirl.define do 
  factory :post do
    date Date.today
    Rationale "something"
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    Rationale "something else"
  end
end