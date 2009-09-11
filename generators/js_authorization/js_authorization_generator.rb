class JsAuthorizationGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file "config/initializers/js_authorization_mail.rb", "config/initializers/js_authorization_mail.rb"
      m.file "config/initializers/js_authorization_locale.rb", "config/initializers/js_authorization_locale.rb"
      
      m.file "controllers/user_controller.rb", "app/controllers/user_controller.rb" 

      m.file "models/user.rb", "app/models/user.rb"

      m.directory "app/views/user"
      m.file "views/user/index.erb", "app/views/user/index.erb"
      m.file "views/user/login.erb", "app/views/user/login.erb"
      m.file "views/user/signup.erb", "app/views/user/signup.erb"
      m.file "views/user/new_password.erb", "app/views/user/new_password.erb"
      m.file "views/user/forgot_password.erb", "app/views/user/forgot_password.erb"

      m.migration_template "migrate/create_users.rb", "db/migrate"
      
      m.readme "INSTALL"
    end
  end
  
  def file_name  
    "create_users"
  end
end