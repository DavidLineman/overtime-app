namespace :notification do
  desc "Send SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours from last week: #{request.domain}."
    
        employees.each do |employee|
          AuditLog.create!(user_id: employee.id)
          SmsTool.send_sms(number: employee.phone, message: notification_message)

        end
      # 4. Send a meassage that has instructions and a link to log time. 
      # User.all.each do |user|
      #   SmsTool.send_sms()
    end
   
    

    # No spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
  end

  desc "Send mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    # 1. Iterate over the list f pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over the list of admin users/manager
    # 4. Send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end

  end

end
