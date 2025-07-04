namespace :basicforum do
  desc "Print hello world"
  task say_hello: :environment do
    puts "Hello, World!"
  end
end