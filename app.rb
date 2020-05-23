#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# создаем подключение к базе данных
set :database, "sqlite3:barbershop.db" # подключаем sqlite3

class Client < ActiveRecord::Base # создаем сущность Client в который входит ActiveRecord
end

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end