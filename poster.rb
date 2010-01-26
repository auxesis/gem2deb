#!/usr/bin/env ruby 

__DIR__ = File.expand_path(File.dirname(__FILE__))
require File.join(__DIR__, 'vendor/gems/environment')
require 'sinatra'

post "/update" do 
  log_request
  "ok"
end

def log_request
  filename = File.expand_path(File.join(File.dirname(__FILE__), 'log', Time.now.to_i.to_s + '.yaml'))
  File.open(filename, 'w') do |f|
    f << params.to_yaml
  end
end
