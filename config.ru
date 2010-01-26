#!/usr/bin/env ruby

__DIR__ = File.expand_path(File.dirname(__FILE__))
require "#{__DIR__}/vendor/gems/environment"
require 'poster'

run Sinatra::Application
