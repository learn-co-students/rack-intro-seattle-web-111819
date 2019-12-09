my_server = Proc.new do
    [200, {'Content-Type' => 'text/html'}, ['<em> Hello, Testing Testing 123.</em>']]
end

run my_serverrequire 'rack'



