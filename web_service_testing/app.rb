$LOAD_PATH << Dir.pwd

require 'sinatra'
require 'json'
require 'calculator'

get '/add' do

  result = Calculator.send :add, params[:operand1], params[:operand2]
  {result: result}.to_json

end

get '/subtract' do

  result = Calculator.send :subtract, params[:operand1], params[:operand2]
  {result: result}.to_json

end

post '/calculate' do

  payload = JSON.parse request.body.read
  result = calculate_value(payload)
  {result: result}.to_json

end


helpers do

  def calculate_value(payload)
    current_values = []
    payload.each_pair do |k, v|
      if v.is_a? Hash
        current_values << calculate_value(v)
      end
      values_to_opporate = current_values << v
      return Calculator.send(k, values_to_opporate.flatten)

    end
  end

end
