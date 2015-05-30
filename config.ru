require "bundler/setup"
Bundler.require :default
require_relative "app"

Padrino.mount("App").to "/"
Padrino.load!
run Padrino.application
