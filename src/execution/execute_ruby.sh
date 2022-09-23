cd ../..

# ---------------------------------------------------------------------------------------------------------------------
# RVM - Ruby Version Manager commands
# ---------------------------------------------------------------------------------------------------------------------

# Change the current Ruby version
rvm use 3.1.2

# Change the default Ruby version
rvm --default use 3.1.2

# List the installed Ruby versions
rvm list



# ---------------------------------------------------------------------------------------------------------------------
# Bundle commands
# ---------------------------------------------------------------------------------------------------------------------

# Add a Ruby debugger gem (library)
bundle add byebug

# Add a Ruby gem (library)
bundle add rubocop

# Add Webdrivers to manage browsers during UI testing
bundle add webdrivers
# Add Watir  UI testing library for Ruby
bundle add watir

# Install Ruby gems (libraries) contained in the Gemfile
bundle install



# ---------------------------------------------------------------------------------------------------------------------
# Ruby commands
# ---------------------------------------------------------------------------------------------------------------------

# Execute a Ruby script
ruby ../basics.rb



# ---------------------------------------------------------------------------------------------------------------------
# Rake commands - Ruby task runner
# ---------------------------------------------------------------------------------------------------------------------

# List Rake available tasks
rake -T # Task

# List Rake available tasks and its location
rake -W # Where

# Execute a specific task
rake test

# Execute a specific task in a task group
rake backup:create