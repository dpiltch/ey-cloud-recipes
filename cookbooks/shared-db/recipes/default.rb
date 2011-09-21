# Name of the application
app = 'myapp'

# The name of the application with db credentials
# you want to use
parent_app = 'parentapp'

if app_name && parent_app
  execute "Symlink /data/#{parent_app}/shared/config/database.yml to /data/#{app}/shared/config/database.yml" do
    command "ln -sf /data/#{parent_app}/shared/config/database.yml /data/#{app}/shared/config/database.yml"
    only_if "test -f /data/#{parent_app}/shared/config/database.yml"
  end
end
