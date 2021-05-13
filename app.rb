require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.capitalize}!"
  end

  # Code your final two routes here:

  # sends a 200 status code
  # displays 'goodbye' and a name
  # is not hard-coded
  get '/goodbye/:name' do
    @person_name = params[:name]
    "Goodbye, #{@person_name}."
  end

  # sends a 200 status code
  # displays the product of the two numbers in the route
  # is not hard-coded
  get '/multiply/:num1/:num2' do
    @number = params[:num1].to_i * params[:num2].to_i
    "#{@number}"
  end

end