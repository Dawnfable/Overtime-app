FactoryGirl.define do 
  factory :post do
    date Date.today
    Rationale "Rationale"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    Rationale "content"
    user
  end

  factory :post_from_other_user, class: "Post" do
    date Date.yesterday
    Rationale "content"
    non_authorized_user
  end
end