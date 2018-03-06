@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "jon", 
                    last_name: "snow",
                    phone:"3852091055")

puts "1 user created"

AdminUser.create(email: "admin@admin.com", 
                 password: "asdfasdf", 
                 password_confirmation: "asdfasdf", 
                 first_name: "Admin", 
                 last_name: "User",
                 phone:"3852091055")

puts "1 admin user created"

100.times do |post|
  Post.create!(date: Date.today, Rationale: "#{post} rationale content", user_id: @user.id, ocertime_request: 1.2)
end

puts "100 posts created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs created"

