namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: "555-555-3323"
    # number: "5555553323"
    # No spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
    end
  end

  desc "Sends mail notification to managers each day to inform of pending overtime requeste"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUsers.all

    if submitted_posts.count > 0 
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end

end
