abort("mkdir: missing input") if ARGV.empty?
folder_name = ARGV.first
Dir.mkdir(folder_name)

Dir.chdir("#{folder_name}")
Dir.mkdir("lib")
system("rspec --init")
system("git init")
system('echo "Projet" >> README.md')
system('echo ".env" >> .gitignore')
system('touch Gemfile')
file = File.open("Gemfile", "a")
file.puts('source "https://rubygems.org"
ruby "2.5.1"
gem "rubocop", "~> 0.57.2"
gem "rspec"
gem "pry"')
file.close
file = File.open("Gemfile", "r")
puts "Voici le contenu de ton Gemfile :"
puts file.read
file.close
system('bundle install')
system('st3 .')

