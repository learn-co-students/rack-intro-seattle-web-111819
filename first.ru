require 'rack'
 
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>']]
end
 
run my_server

#NOTES:
#Files that are used by Rack end with .ru instead of .rb because they're loaded with a command called rackup

#If you make changes to first.ru you'll have to shut down the server (Control-C) and re-start it to see the changes.

#The way most Rack applications are built: 
#the server setup code lives in the rackup file and 
#our application logic lives in a class (.rb file) that's referenced by the run command in the rackup file