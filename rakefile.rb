require './app.rb'

load './app/tasks/sender.rake'

PolishGeeks::DevTools.setup do |config|
  config.brakeman = false
  config.haml_lint = false
end

desc 'Self check using polishgeeks-dev-tools'
task :check do
  PolishGeeks::DevTools::Runner.new.execute(
    PolishGeeks::DevTools::Logger.new
  )
end

task default: :check
