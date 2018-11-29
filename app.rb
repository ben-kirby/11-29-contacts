require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/Contact'
require 'pry'


get '/' do
  @list = Contact.all
  # binding.pry
  erb(:index)
end

post '/' do
  contact = Contact.new(params)
  contact.save
  @list = Contact.all
  erb(:index)
end

get '/contact/:id' do
  id = params['id']
  @list = Contact.find(id)
  erb(:index)
end

post '/contact/:id' do
  id = params['id']
  @list = Contact.find(id)
  @list.add_address(params)
  @list.add_job(params)
  @list.add_contact_company(params)
  @list.add_contact_type(params)
  erb(:index)
end
