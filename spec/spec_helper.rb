$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'inline-css-html-converter'
require "codeclimate-test-reporter"
require 'simplecov'

SimpleCov.start
CodeClimate::TestReporter.start
