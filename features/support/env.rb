# coding: UTF-8

require 'daddy/cucumber'
require 'childprocess'
require 'httparty'

Capybara.run_server = false
Capybara.app_host = 'http://localhost:3001'

node = ChildProcess.build("node", "app")
node.environment['PORT'] = 3001
node.start

at_exit do
  begin
    node.poll_for_exit(3)
  rescue ChildProcess::TimeoutError => e
    node.stop
  end
end

server_running = false
until server_running do
  begin
    HTTParty.get(Capybara.app_host)
    server_running = true
  rescue => e
    sleep 1
  end
end
