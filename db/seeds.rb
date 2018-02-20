@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "jon", last_name: "snow")

puts "1 user created"

100.times do |post|
  Post.create!(date: Date.today, Rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts created"