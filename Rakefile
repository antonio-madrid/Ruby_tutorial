# Rake is a task runner in Ruby

# ---------------------------------------------------------------------------------------------------------------------
# Simple Task
# ---------------------------------------------------------------------------------------------------------------------

desc 'Close the DB connections' # Describes a task when executing 'rake -T'
task :close_dbs do # Creates a names a task
  p 'Closing DB connections...' # executes Ruby or Shell code
end

desc 'An example of a task which run tests'
task :test do
  p 'Running tests...'
  ruby './src/Watir/watir.rb' # The way to execute a Ruby file inside a Ruby script
end

# ---------------------------------------------------------------------------------------------------------------------
# Dependant task
# ---------------------------------------------------------------------------------------------------------------------

desc 'Shutdown the system'
task off: 'close_dbs' do # It executes the named task before this one
  puts 'Shutting down the system...'
end



# ---------------------------------------------------------------------------------------------------------------------
# Namespace
# ---------------------------------------------------------------------------------------------------------------------

desc 'Manage the backup processes'
namespace :backup do # creates a group of tasks

  task :create do #
    p 'Creating a backup...'
  end

  task :list do
    p 'Listing the backups...'
  end

  task :restore do
    p 'Restoring the system...'
  end
end



# ---------------------------------------------------------------------------------------------------------------------
# Run a task inside a task
# ---------------------------------------------------------------------------------------------------------------------

desc 'Run test coverage'
task :coverage do
  ENV['COVERAGE'] = 'true' # It gets an environment variable
  Rake::Task['test'].execute # Calling Rake allows to execute a task inside a task
end

desc 'Print working directory using a Unix command'
task :pwd do
  sh 'pwd' # the way to execute Unix shell commands in Ruby
end
